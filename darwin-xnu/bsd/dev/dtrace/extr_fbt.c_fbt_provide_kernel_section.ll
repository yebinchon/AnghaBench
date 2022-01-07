; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_provide_kernel_section.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_provide_kernel_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modctl = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@S_ATTR_PURE_INSTRUCTIONS = common dso_local global i32 0, align 4
@N_TYPE = common dso_local global i32 0, align 4
@N_EXT = common dso_local global i32 0, align 4
@N_SECT = common dso_local global i32 0, align 4
@N_ABS = common dso_local global i32 0, align 4
@N_ARM_THUMB_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.modctl*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i8*)* @fbt_provide_kernel_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbt_provide_kernel_section(%struct.modctl* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.modctl*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.modctl* %0, %struct.modctl** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  store i64 %26, i64* %12, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @S_ATTR_PURE_INSTRUCTIONS, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @S_ATTR_PURE_INSTRUCTIONS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %153

35:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %150, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %153

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @N_TYPE, align 4
  %48 = load i32, i32* @N_EXT, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  store i32 %50, i32* %14, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %51, i64 %59
  store i8* %60, i8** %15, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %40
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69, %40
  br label %150

79:                                               ; preds = %69
  %80 = load i32, i32* @N_SECT, align 4
  %81 = load i32, i32* @N_EXT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i32, i32* @N_ABS, align 4
  %87 = load i32, i32* @N_EXT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %150

92:                                               ; preds = %85, %79
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 0, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %150

102:                                              ; preds = %92
  %103 = load i8*, i8** %15, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 95
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i8*, i8** %15, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** %15, align 8
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.modctl*, %struct.modctl** %6, align 8
  %112 = call i64 @MOD_IS_MACH_KERNEL(%struct.modctl* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i8*, i8** %15, align 8
  %116 = call i64 @fbt_excluded(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %150

119:                                              ; preds = %114, %110
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sub i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i64, i64* %12, align 8
  store i64 %125, i64* %16, align 8
  br label %134

126:                                              ; preds = %119
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = load i32, i32* %13, align 4
  %129 = add i32 %128, 1
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %16, align 8
  br label %134

134:                                              ; preds = %126, %124
  %135 = load %struct.modctl*, %struct.modctl** %6, align 8
  %136 = load %struct.modctl*, %struct.modctl** %6, align 8
  %137 = getelementptr inbounds %struct.modctl, %struct.modctl* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** %15, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = load i32, i32* %13, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i32*
  %147 = load i64, i64* %16, align 8
  %148 = inttoptr i64 %147 to i32*
  %149 = call i32 @fbt_provide_probe(%struct.modctl* %135, i32 %138, i8* %139, i32* %146, i32* %148)
  br label %150

150:                                              ; preds = %134, %118, %101, %91, %78
  %151 = load i32, i32* %13, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %36

153:                                              ; preds = %34, %36
  ret void
}

declare dso_local i64 @MOD_IS_MACH_KERNEL(%struct.modctl*) #1

declare dso_local i64 @fbt_excluded(i8*) #1

declare dso_local i32 @fbt_provide_probe(%struct.modctl*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
