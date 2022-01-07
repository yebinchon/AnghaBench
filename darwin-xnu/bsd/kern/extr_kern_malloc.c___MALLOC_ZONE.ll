; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_malloc.c___MALLOC_ZONE.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_malloc.c___MALLOC_ZONE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmzones = type { i64, i64 }

@M_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"_malloc_zone TYPE\00", align 1
@kmzones = common dso_local global %struct.kmzones* null, align 8
@KMZ_MALLOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"_malloc_zone ZONE: type = %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"_malloc_zone XXX\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__MALLOC_ZONE(i64 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.kmzones*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @M_LAST, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %4
  %18 = load %struct.kmzones*, %struct.kmzones** @kmzones, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %18, i64 %20
  store %struct.kmzones* %21, %struct.kmzones** %9, align 8
  %22 = load %struct.kmzones*, %struct.kmzones** %9, align 8
  %23 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @KMZ_MALLOC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load %struct.kmzones*, %struct.kmzones** %9, align 8
  %32 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.kmzones*, %struct.kmzones** %9, align 8
  %40 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @M_NOWAIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.kmzones*, %struct.kmzones** %9, align 8
  %50 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @zalloc_noblock(i64 %51)
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %10, align 8
  br label %60

54:                                               ; preds = %43
  %55 = load %struct.kmzones*, %struct.kmzones** %9, align 8
  %56 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @zalloc(i64 %57)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %54, %48
  br label %84

61:                                               ; preds = %37
  %62 = load i64, i64* %5, align 8
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i8* null, i8** %10, align 8
  br label %83

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @M_NOWAIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* @FALSE, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = call i64 @kalloc_canblock(i64* %11, i32 %73, i32* %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %10, align 8
  br label %82

77:                                               ; preds = %67
  %78 = load i32, i32* @TRUE, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = call i64 @kalloc_canblock(i64* %11, i32 %78, i32* %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %10, align 8
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i8*, i8** %10, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @M_ZERO, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i8*, i8** %10, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @bzero(i8* %93, i64 %94)
  br label %96

96:                                               ; preds = %92, %87, %84
  %97 = load i8*, i8** %10, align 8
  ret i8* %97
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @zalloc_noblock(i64) #1

declare dso_local i64 @zalloc(i64) #1

declare dso_local i64 @kalloc_canblock(i64*, i32, i32*) #1

declare dso_local i32 @bzero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
