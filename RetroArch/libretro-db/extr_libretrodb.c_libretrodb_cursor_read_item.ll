; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_libretrodb.c_libretrodb_cursor_read_item.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_libretrodb.c_libretrodb_cursor_read_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.rmsgpack_dom_value = type { i64 }

@EOF = common dso_local global i32 0, align 4
@RDT_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libretrodb_cursor_read_item(%struct.TYPE_3__* %0, %struct.rmsgpack_dom_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.rmsgpack_dom_value*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.rmsgpack_dom_value* %1, %struct.rmsgpack_dom_value** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EOF, align 4
  store i32 %12, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %46, %13
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %19 = call i32 @rmsgpack_dom_read(i32 %17, %struct.rmsgpack_dom_value* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %14
  %25 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %26 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RDT_NULL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* @EOF, align 4
  store i32 %33, i32* %3, align 4
  br label %51

34:                                               ; preds = %24
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %44 = call i32 @libretrodb_query_filter(i64 %42, %struct.rmsgpack_dom_value* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %48 = call i32 @rmsgpack_dom_value_free(%struct.rmsgpack_dom_value* %47)
  br label %14

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %34
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %30, %22, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @rmsgpack_dom_read(i32, %struct.rmsgpack_dom_value*) #1

declare dso_local i32 @libretrodb_query_filter(i64, %struct.rmsgpack_dom_value*) #1

declare dso_local i32 @rmsgpack_dom_value_free(%struct.rmsgpack_dom_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
