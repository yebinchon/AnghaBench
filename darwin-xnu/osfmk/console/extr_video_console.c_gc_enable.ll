; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i8*)*, i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32)* }
%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@disableConsoleOutput = common dso_local global i8* null, align 8
@gc_enabled = common dso_local global i8* null, align 8
@gc_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@gc_buffer_size = common dso_local global i32 0, align 4
@gc_buffer_attributes = common dso_local global i8* null, align 8
@gc_buffer_characters = common dso_local global i8* null, align 8
@gc_buffer_colorcodes = common dso_local global i8* null, align 8
@gc_buffer_tab_stops = common dso_local global i8* null, align 8
@gc_buffer_columns = common dso_local global i32 0, align 4
@gc_buffer_rows = common dso_local global i32 0, align 4
@vm_initialized = common dso_local global i64 0, align 8
@vinfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ATTR_NONE = common dso_local global i8 0, align 1
@COLOR_FOREGROUND = common dso_local global i32 0, align 4
@gc_x = common dso_local global i32 0, align 4
@gc_y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_enable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @FALSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = call i64 (...) @console_is_serial()
  %16 = load i64, i64* @FALSE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** @TRUE, align 8
  store i8* %19, i8** @disableConsoleOutput, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i64, i64* @FALSE, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** @gc_enabled, align 8
  %23 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gc_ops, i32 0, i32 0), align 8
  %24 = load i64, i64* @FALSE, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 %23(i8* %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = call i32 (...) @splhigh()
  store i32 %28, i32* %10, align 4
  %29 = call i32 (...) @VCPUTC_LOCK_LOCK()
  %30 = load i32, i32* @gc_buffer_size, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load i8*, i8** @gc_buffer_attributes, align 8
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** @gc_buffer_characters, align 8
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** @gc_buffer_colorcodes, align 8
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** @gc_buffer_tab_stops, align 8
  store i8* %36, i8** %6, align 8
  %37 = load i32, i32* @gc_buffer_columns, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @gc_buffer_rows, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @gc_buffer_size, align 4
  store i32 %39, i32* %9, align 4
  store i8* null, i8** @gc_buffer_attributes, align 8
  store i8* null, i8** @gc_buffer_characters, align 8
  store i8* null, i8** @gc_buffer_colorcodes, align 8
  store i8* null, i8** @gc_buffer_tab_stops, align 8
  store i32 0, i32* @gc_buffer_columns, align 4
  store i32 0, i32* @gc_buffer_rows, align 4
  store i32 0, i32* @gc_buffer_size, align 4
  %40 = call i32 (...) @VCPUTC_LOCK_UNLOCK()
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @splx(i32 %41)
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @kfree(i8* %43, i32 %44)
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @kfree(i8* %46, i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @kfree(i8* %49, i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @kfree(i8* %52, i32 %53)
  br label %59

55:                                               ; preds = %27
  %56 = call i32 (...) @VCPUTC_LOCK_UNLOCK()
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @splx(i32 %57)
  br label %59

59:                                               ; preds = %55, %32
  %60 = load i64, i64* %2, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %174

62:                                               ; preds = %59
  %63 = load i64, i64* @vm_initialized, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %145

65:                                               ; preds = %62
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vinfo, i32 0, i32 0), align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vinfo, i32 0, i32 1), align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %144

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @kalloc(i32 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %3, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @kalloc(i32 %77)
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @kalloc(i32 %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @kalloc(i32 %83)
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %73
  %89 = load i8*, i8** %4, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** %5, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** %6, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %126

97:                                               ; preds = %94, %91, %88, %73
  %98 = load i8*, i8** %3, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i8*, i8** %3, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @kfree(i8* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = load i8*, i8** %4, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @kfree(i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i8*, i8** %5, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @kfree(i8* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i8*, i8** %6, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @kfree(i8* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %118
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %143

126:                                              ; preds = %94
  %127 = load i8*, i8** %3, align 8
  %128 = load i8, i8* @ATTR_NONE, align 1
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @memset(i8* %127, i8 signext %128, i32 %129)
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @memset(i8* %131, i8 signext 32, i32 %132)
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* @COLOR_FOREGROUND, align 4
  %136 = load i8*, i8** @TRUE, align 8
  %137 = call signext i8 @COLOR_CODE_SET(i32 0, i32 %135, i8* %136)
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @memset(i8* %134, i8 signext %137, i32 %138)
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @memset(i8* %140, i8 signext 0, i32 %141)
  br label %143

143:                                              ; preds = %126, %125
  br label %144

144:                                              ; preds = %143, %65
  br label %145

145:                                              ; preds = %144, %62
  %146 = call i32 (...) @splhigh()
  store i32 %146, i32* %10, align 4
  %147 = call i32 (...) @VCPUTC_LOCK_LOCK()
  %148 = load i8*, i8** %3, align 8
  store i8* %148, i8** @gc_buffer_attributes, align 8
  %149 = load i8*, i8** %4, align 8
  store i8* %149, i8** @gc_buffer_characters, align 8
  %150 = load i8*, i8** %5, align 8
  store i8* %150, i8** @gc_buffer_colorcodes, align 8
  %151 = load i8*, i8** %6, align 8
  store i8* %151, i8** @gc_buffer_tab_stops, align 8
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* @gc_buffer_columns, align 4
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* @gc_buffer_rows, align 4
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* @gc_buffer_size, align 4
  %155 = call i32 (...) @gc_reset_screen()
  %156 = call i32 (...) @VCPUTC_LOCK_UNLOCK()
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @splx(i32 %157)
  %159 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gc_ops, i32 0, i32 2), align 8
  %160 = load i32, i32* @gc_x, align 4
  %161 = load i32, i32* @gc_y, align 4
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vinfo, i32 0, i32 1), align 4
  %163 = call i32 %159(i32 %160, i32 %161, i32 0, i32 %162, i32 2)
  %164 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gc_ops, i32 0, i32 1), align 8
  %165 = load i32, i32* @gc_x, align 4
  %166 = load i32, i32* @gc_y, align 4
  %167 = call i32 %164(i32 %165, i32 %166)
  %168 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gc_ops, i32 0, i32 0), align 8
  %169 = load i8*, i8** @TRUE, align 8
  %170 = call i32 %168(i8* %169)
  %171 = load i8*, i8** @TRUE, align 8
  store i8* %171, i8** @gc_enabled, align 8
  %172 = load i64, i64* @FALSE, align 8
  %173 = inttoptr i64 %172 to i8*
  store i8* %173, i8** @disableConsoleOutput, align 8
  br label %174

174:                                              ; preds = %145, %59
  ret void
}

declare dso_local i64 @console_is_serial(...) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @VCPUTC_LOCK_LOCK(...) #1

declare dso_local i32 @VCPUTC_LOCK_UNLOCK(...) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @kfree(i8*, i32) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local signext i8 @COLOR_CODE_SET(i32, i32, i8*) #1

declare dso_local i32 @gc_reset_screen(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
