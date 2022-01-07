; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_libretrodb_query_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_libretrodb_query_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.query* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libretrodb_query_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.query*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.query*
  store %struct.query* %6, %struct.query** %4, align 8
  %7 = load %struct.query*, %struct.query** %4, align 8
  %8 = getelementptr inbounds %struct.query, %struct.query* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.query*, %struct.query** %4, align 8
  %12 = getelementptr inbounds %struct.query, %struct.query* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %50

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.query*, %struct.query** %4, align 8
  %20 = getelementptr inbounds %struct.query, %struct.query* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %18, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.query*, %struct.query** %4, align 8
  %26 = getelementptr inbounds %struct.query, %struct.query* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.query*, %struct.query** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.query, %struct.query* %28, i64 %30
  %32 = call i32 @query_argument_free(%struct.query* %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.query*, %struct.query** %4, align 8
  %38 = getelementptr inbounds %struct.query, %struct.query* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.query*, %struct.query** %39, align 8
  %41 = call i32 @free(%struct.query* %40)
  %42 = load %struct.query*, %struct.query** %4, align 8
  %43 = getelementptr inbounds %struct.query, %struct.query* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store %struct.query* null, %struct.query** %44, align 8
  %45 = load %struct.query*, %struct.query** %4, align 8
  %46 = getelementptr inbounds %struct.query, %struct.query* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.query*, %struct.query** %4, align 8
  %49 = call i32 @free(%struct.query* %48)
  br label %50

50:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @query_argument_free(%struct.query*) #1

declare dso_local i32 @free(%struct.query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
