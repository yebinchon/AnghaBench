; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_scope.c_scope_eval.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_scope.c_scope_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@SCOPE_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scope_eval(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @SCOPE_BUFFER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %111

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %106, %21
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 126
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  br i1 %39, label %41, label %44

41:                                               ; preds = %33
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i8*, i8** %11, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 126)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %94

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  store i64 %58, i64* %12, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %53
  %62 = load i8*, i8** %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @strncpy(i8* %17, i8* %62, i64 %63)
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i8, i8* %17, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = call %struct.TYPE_7__* @param_find(%struct.TYPE_6__* %67, i8* %17, i32 0)
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %13, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcat(i8* %73, i8* %76)
  br label %83

78:                                               ; preds = %61
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcat(i8* %81, i8* %17)
  br label %83

83:                                               ; preds = %78, %70
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  br label %93

86:                                               ; preds = %53
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @strncat(i8* %89, i8* %90, i64 %91)
  br label %93

93:                                               ; preds = %86, %83
  br label %106

94:                                               ; preds = %49, %44
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %99, i8** %11, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @strcat(i8* %103, i8* %104)
  br label %107

106:                                              ; preds = %93
  br label %27

107:                                              ; preds = %100, %27
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %111

111:                                              ; preds = %107, %20
  %112 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i8*, i8** %3, align 8
  ret i8* %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local %struct.TYPE_7__* @param_find(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @strncat(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
