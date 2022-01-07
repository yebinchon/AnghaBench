; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_thread_func.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, %struct.TYPE_12__, i64, i32, i32, %struct.TYPE_9__, i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"hb_scan: canceled\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"libhb: scan thread found %d valid title(s)\00", align 1
@HB_STATE_SCANDONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"libhb: work result = %d\00", align 1
@HB_STATE_WORKDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %3, align 8
  %8 = call i32 (...) @getpid()
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 11
  store i32 %8, i32* %10, align 4
  %11 = call i8* (...) @hb_get_temporary_directory()
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @hb_mkdir(i8* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @free(i8* %14)
  br label %16

16:                                               ; preds = %140, %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %142

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @hb_thread_has_exited(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %27
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = call i32 @hb_thread_close(i64* %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %33
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = call i32 @hb_remove_previews(%struct.TYPE_13__* %42)
  br label %44

44:                                               ; preds = %51, %41
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @hb_list_item(i32 %48, i32 0)
  store i32* %49, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @hb_list_rem(i32 %55, i32* %56)
  %58 = call i32 @hb_title_close(i32** %5)
  br label %44

59:                                               ; preds = %44
  %60 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %68

61:                                               ; preds = %33
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @hb_list_count(i32 %65)
  %67 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %61, %59
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @hb_lock(i32 %71)
  %73 = load i32, i32* @HB_STATE_SCANDONE, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @hb_unlock(i32 %79)
  br label %81

81:                                               ; preds = %68, %27, %22
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %120

86:                                               ; preds = %81
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @hb_thread_has_exited(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %86
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = call i32 @hb_thread_close(i64* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @hb_log(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @hb_lock(i32 %102)
  %104 = load i32, i32* @HB_STATE_WORKDONE, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i32 %110, i32* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @hb_unlock(i32 %118)
  br label %120

120:                                              ; preds = %92, %86, %81
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i64 (...) @hb_get_date()
  %130 = add nsw i64 %128, %129
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i64 %134, i64* %139, align 8
  br label %140

140:                                              ; preds = %125, %120
  %141 = call i32 @hb_snooze(i32 50)
  br label %16

142:                                              ; preds = %16
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = call i32 @hb_scan_stop(%struct.TYPE_13__* %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = call i32 @hb_thread_close(i64* %151)
  br label %153

153:                                              ; preds = %147, %142
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %160 = call i32 @hb_stop(%struct.TYPE_13__* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = call i32 @hb_thread_close(i64* %162)
  br label %164

164:                                              ; preds = %158, %153
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %166 = call i32 @hb_remove_previews(%struct.TYPE_13__* %165)
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i8* @hb_get_temporary_directory(...) #1

declare dso_local i32 @hb_mkdir(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @hb_thread_has_exited(i64) #1

declare dso_local i32 @hb_thread_close(i64*) #1

declare dso_local i32 @hb_remove_previews(%struct.TYPE_13__*) #1

declare dso_local i32* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_list_rem(i32, i32*) #1

declare dso_local i32 @hb_title_close(i32**) #1

declare dso_local i32 @hb_log(i8*, ...) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i32 @hb_lock(i32) #1

declare dso_local i32 @hb_unlock(i32) #1

declare dso_local i64 @hb_get_date(...) #1

declare dso_local i32 @hb_snooze(i32) #1

declare dso_local i32 @hb_scan_stop(%struct.TYPE_13__*) #1

declare dso_local i32 @hb_stop(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
