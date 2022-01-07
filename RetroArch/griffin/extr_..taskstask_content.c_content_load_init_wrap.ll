; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_load_init_wrap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_content_load_init_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rarch_main_wrap = type { i8*, i8*, i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"retroarch\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Using content: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"arg #%d: %s\0A\00", align 1
@MSG_NO_CONTENT_STARTING_DUMMY_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rarch_main_wrap*, i32*, i8**)* @content_load_init_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @content_load_init_wrap(%struct.rarch_main_wrap* %0, i32* %1, i8** %2) #0 {
  %4 = alloca %struct.rarch_main_wrap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.rarch_main_wrap* %0, %struct.rarch_main_wrap** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load i8**, i8*** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8*, i8** %10, i64 %14
  store i8* %9, i8** %15, align 8
  %16 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %17 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %22 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %26 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @strdup(i8* %27)
  %29 = load i8**, i8*** %6, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8*, i8** %29, i64 %33
  store i8* %28, i8** %34, align 8
  br label %35

35:                                               ; preds = %20, %3
  %36 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %37 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8**, i8*** %6, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8*, i8** %42, i64 %46
  store i8* %41, i8** %47, align 8
  %48 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %49 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @strdup(i8* %50)
  %52 = load i8**, i8*** %6, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  store i8* %51, i8** %57, align 8
  br label %58

58:                                               ; preds = %40, %35
  %59 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %60 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i8**, i8*** %6, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8*, i8** %65, i64 %69
  store i8* %64, i8** %70, align 8
  %71 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %72 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @strdup(i8* %73)
  %75 = load i8**, i8*** %6, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8*, i8** %75, i64 %79
  store i8* %74, i8** %80, align 8
  br label %81

81:                                               ; preds = %63, %58
  %82 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %83 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i8**, i8*** %6, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8*, i8** %88, i64 %92
  store i8* %87, i8** %93, align 8
  %94 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %95 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @strdup(i8* %96)
  %98 = load i8**, i8*** %6, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8*, i8** %98, i64 %102
  store i8* %97, i8** %103, align 8
  br label %104

104:                                              ; preds = %86, %81
  %105 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %4, align 8
  %106 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i8**, i8*** %6, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8*, i8** %111, i64 %115
  store i8* %110, i8** %116, align 8
  br label %117

117:                                              ; preds = %109, %104
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %131, %117
  %119 = load i32, i32* %7, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = load i8**, i8*** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %124, i8* %129)
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %118

134:                                              ; preds = %118
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
