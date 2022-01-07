; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_MatchFinder_ReadBlock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_MatchFinder_ReadBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i8*, i8*, i32, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i8*, i64*)* }

@SZ_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @MatchFinder_ReadBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MatchFinder_ReadBlock(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SZ_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %131

17:                                               ; preds = %10
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = sub nsw i64 4294967295, %29
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %36, %22
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %40
  br label %131

59:                                               ; preds = %17
  br label %60

60:                                               ; preds = %130, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = getelementptr inbounds i8, i8* %63, i64 %70
  store i8* %71, i8** %4, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 6
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = load i8*, i8** %4, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %60
  br label %131

87:                                               ; preds = %60
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 9
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64 (%struct.TYPE_5__*, i8*, i64*)*, i64 (%struct.TYPE_5__*, i8*, i64*)** %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 9
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = call i64 %92(%struct.TYPE_5__* %95, i8* %96, i64* %5)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SZ_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %87
  br label %131

106:                                              ; preds = %87
  %107 = load i64, i64* %5, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %131

112:                                              ; preds = %106
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %112
  br label %131

130:                                              ; preds = %112
  br label %60

131:                                              ; preds = %129, %109, %105, %86, %58, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
