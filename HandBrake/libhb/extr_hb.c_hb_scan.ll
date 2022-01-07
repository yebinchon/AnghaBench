; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_scan.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__, i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@HB_STATE_SCANDONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"CPU: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" - %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c" - logical processor count: %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"hb_scan: path=%s, title_index=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_scan(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %83

22:                                               ; preds = %6
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @strcmp(i32* %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %83, label %30

30:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %79, %30
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @hb_list_count(i32 %36)
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %31
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call %struct.TYPE_12__* @hb_list_item(i32 %43, i32 %44)
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %13, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hb_lock(i32 %67)
  %69 = load i32, i32* @HB_STATE_SCANDONE, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @hb_unlock(i32 %75)
  br label %153

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %39
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %31

82:                                               ; preds = %31
  br label %83

83:                                               ; preds = %82, %22, %6
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 10, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = call i32 @hb_remove_previews(%struct.TYPE_13__* %90)
  br label %92

92:                                               ; preds = %99, %87
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.TYPE_12__* @hb_list_item(i32 %96, i32 0)
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %13, align 8
  %98 = icmp ne %struct.TYPE_12__* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %105 = call i32 @hb_list_rem(i32 %103, %struct.TYPE_12__* %104)
  %106 = call i32 @hb_title_close(%struct.TYPE_12__** %13)
  br label %92

107:                                              ; preds = %92
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = call i32 @free(i8* %112)
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  %117 = call i8* (...) @hb_get_cpu_name()
  store i8* %117, i8** %15, align 8
  %118 = call i8* (...) @hb_get_cpu_platform_name()
  store i8* %118, i8** %16, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %107
  %122 = load i8*, i8** %15, align 8
  br label %124

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i8* [ %122, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %123 ]
  %126 = call i32 (i8*, i8*, ...) @hb_log(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %125)
  %127 = load i8*, i8** %16, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i8*, i8** %16, align 8
  %131 = call i32 (i8*, i8*, ...) @hb_log(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %129, %124
  %133 = call i32 (...) @hb_get_cpu_count()
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i32 (i8*, i8*, ...) @hb_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %135)
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 (i8*, i8*, ...) @hb_log(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %137, i32 %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i8*, i8** %8, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @hb_scan_init(%struct.TYPE_13__* %140, i64* %142, i8* %143, i32 %144, %struct.TYPE_14__* %146, i32 %147, i32 %148, i32 %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %132, %64
  ret void
}

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_12__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_lock(i32) #1

declare dso_local i32 @hb_unlock(i32) #1

declare dso_local i32 @hb_remove_previews(%struct.TYPE_13__*) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @hb_title_close(%struct.TYPE_12__**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @hb_get_cpu_name(...) #1

declare dso_local i8* @hb_get_cpu_platform_name(...) #1

declare dso_local i32 @hb_log(i8*, i8*, ...) #1

declare dso_local i32 @hb_get_cpu_count(...) #1

declare dso_local i32 @hb_scan_init(%struct.TYPE_13__*, i64*, i8*, i32, %struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
