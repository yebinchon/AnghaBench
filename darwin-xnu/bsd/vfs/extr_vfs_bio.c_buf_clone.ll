; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_clone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, void (%struct.TYPE_7__*, i8*)*, i64, i32, i8*, i32 }

@B_CLUSTER = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@B_COMMIT_UPL = common dso_local global i32 0, align 4
@B_META = common dso_local global i32 0, align 4
@B_PAGEIO = common dso_local global i32 0, align 4
@B_PHYS = common dso_local global i32 0, align 4
@B_RAW = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@B_FUA = common dso_local global i32 0, align 4
@B_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @buf_clone(%struct.TYPE_7__* %0, i32 %1, i32 %2, void (%struct.TYPE_7__*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.TYPE_7__*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store void (%struct.TYPE_7__*, i8*)* %3, void (%struct.TYPE_7__*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %147

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %147

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @B_CLUSTER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @PAGE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %147

48:                                               ; preds = %38, %35
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* @PAGE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %147

68:                                               ; preds = %59, %48
  br label %69

69:                                               ; preds = %68, %28
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_7__* @alloc_io_buf(i32 %72, i32 0)
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %12, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @B_COMMIT_UPL, align 4
  %78 = load i32, i32* @B_META, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @B_PAGEIO, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @B_CLUSTER, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @B_PHYS, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @B_RAW, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @B_ASYNC, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @B_READ, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @B_FUA, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %76, %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load void (%struct.TYPE_7__*, i8*)*, void (%struct.TYPE_7__*, i8*)** %10, align 8
  %98 = icmp ne void (%struct.TYPE_7__*, i8*)* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %69
  %100 = load i8*, i8** %11, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  %103 = load void (%struct.TYPE_7__*, i8*)*, void (%struct.TYPE_7__*, i8*)** %10, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  store void (%struct.TYPE_7__*, i8*)* %103, void (%struct.TYPE_7__*, i8*)** %105, align 8
  %106 = load i32, i32* @B_CALL, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %99, %69
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @B_CLUSTER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %111
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %142

131:                                              ; preds = %111
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %131, %118
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %6, align 8
  br label %147

147:                                              ; preds = %142, %67, %47, %27, %18
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %148
}

declare dso_local %struct.TYPE_7__* @alloc_io_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
