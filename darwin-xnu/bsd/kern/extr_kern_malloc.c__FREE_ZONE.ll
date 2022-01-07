; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_malloc.c__FREE_ZONE.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_malloc.c__FREE_ZONE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmzones = type { i64, i64 }

@M_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"FREE_SIZE\00", align 1
@kmzones = common dso_local global %struct.kmzones* null, align 8
@KMZ_MALLOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"free_zone ZONE\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"FREE_SIZE XXX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_FREE_ZONE(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kmzones*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @M_LAST, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load %struct.kmzones*, %struct.kmzones** @kmzones, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %14, i64 %16
  store %struct.kmzones* %17, %struct.kmzones** %7, align 8
  %18 = load %struct.kmzones*, %struct.kmzones** %7, align 8
  %19 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KMZ_MALLOC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %13
  %26 = load %struct.kmzones*, %struct.kmzones** %7, align 8
  %27 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.kmzones*, %struct.kmzones** %7, align 8
  %35 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.kmzones*, %struct.kmzones** %7, align 8
  %40 = getelementptr inbounds %struct.kmzones, %struct.kmzones* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @zfree(i64 %41, i8* %42)
  br label %48

44:                                               ; preds = %32
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @kfree(i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @zfree(i64, i8*) #1

declare dso_local i32 @kfree(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
