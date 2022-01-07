; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_TocEntryCopy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/libcdvd/iop/extr_cdvd_iop.c_TocEntryCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.TocEntry = type { i32, i64*, i32, i32 }
%struct.dirTocEntry = type { i32, i32, i64*, i32, i32 }

@CDVolDesc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TocEntryCopy(%struct.TocEntry* %0, %struct.dirTocEntry* %1) #0 {
  %3 = alloca %struct.TocEntry*, align 8
  %4 = alloca %struct.dirTocEntry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TocEntry* %0, %struct.TocEntry** %3, align 8
  store %struct.dirTocEntry* %1, %struct.dirTocEntry** %4, align 8
  %7 = load %struct.dirTocEntry*, %struct.dirTocEntry** %4, align 8
  %8 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TocEntry*, %struct.TocEntry** %3, align 8
  %11 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.dirTocEntry*, %struct.dirTocEntry** %4, align 8
  %13 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TocEntry*, %struct.TocEntry** %3, align 8
  %16 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.dirTocEntry*, %struct.dirTocEntry** %4, align 8
  %18 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TocEntry*, %struct.TocEntry** %3, align 8
  %21 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CDVolDesc, i32 0, i32 0), align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %53

24:                                               ; preds = %2
  %25 = load %struct.dirTocEntry*, %struct.dirTocEntry** %4, align 8
  %26 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %49, %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %struct.dirTocEntry*, %struct.dirTocEntry** %4, align 8
  %35 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 1
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %36, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TocEntry*, %struct.TocEntry** %3, align 8
  %44 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %42, i64* %48, align 8
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %29

52:                                               ; preds = %29
  br label %64

53:                                               ; preds = %2
  %54 = load %struct.dirTocEntry*, %struct.dirTocEntry** %4, align 8
  %55 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TocEntry*, %struct.TocEntry** %3, align 8
  %58 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.dirTocEntry*, %struct.dirTocEntry** %4, align 8
  %61 = getelementptr inbounds %struct.dirTocEntry, %struct.dirTocEntry* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = call i32 @strncpy(i64* %59, i64* %62, i32 128)
  br label %64

64:                                               ; preds = %53, %52
  %65 = load %struct.TocEntry*, %struct.TocEntry** %3, align 8
  %66 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 0, i64* %70, align 8
  %71 = load %struct.TocEntry*, %struct.TocEntry** %3, align 8
  %72 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %64
  %77 = load %struct.TocEntry*, %struct.TocEntry** %3, align 8
  %78 = getelementptr inbounds %struct.TocEntry, %struct.TocEntry* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @strtok(i64* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %64
  ret void
}

declare dso_local i32 @strncpy(i64*, i64*, i32) #1

declare dso_local i32 @strtok(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
