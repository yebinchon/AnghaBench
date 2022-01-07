; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_canary_validate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_canary_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@zcache_canary = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [115 x i8] c"Zone cache element was used after free! Element %p was corrupted at beginning; Expected %p but found %p; canary %p\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"Zone cache element was used after free! Element %p was corrupted at end; Expected %p but found %p; canary %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcache_canary_validate(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** %5, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = ptrtoint i64* %11 to i64
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  %17 = sub i64 %16, 8
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** %6, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = xor i64 %20, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @zcache_canary, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* @zcache_canary, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = xor i64 %29, %31
  %33 = inttoptr i64 %32 to i8*
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i64, i64* @zcache_canary, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @panic(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %33, i8* %36, i8* %38)
  br label %40

40:                                               ; preds = %27, %2
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = xor i64 %42, %44
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @zcache_canary, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* @zcache_canary, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = xor i64 %51, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i64, i64* @zcache_canary, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @panic(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %55, i8* %58, i8* %60)
  br label %62

62:                                               ; preds = %49, %40
  ret void
}

declare dso_local i32 @panic(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
