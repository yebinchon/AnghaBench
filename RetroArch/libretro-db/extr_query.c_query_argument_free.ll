; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_argument_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_argument_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argument = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.argument* }

@AT_FUNCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.argument*)* @query_argument_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_argument_free(%struct.argument* %0) #0 {
  %2 = alloca %struct.argument*, align 8
  %3 = alloca i32, align 4
  store %struct.argument* %0, %struct.argument** %2, align 8
  %4 = load %struct.argument*, %struct.argument** %2, align 8
  %5 = getelementptr inbounds %struct.argument, %struct.argument* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AT_FUNCTION, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.argument*, %struct.argument** %2, align 8
  %11 = getelementptr inbounds %struct.argument, %struct.argument* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @rmsgpack_dom_value_free(i32* %12)
  br label %43

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.argument*, %struct.argument** %2, align 8
  %18 = getelementptr inbounds %struct.argument, %struct.argument* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %16, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.argument*, %struct.argument** %2, align 8
  %25 = getelementptr inbounds %struct.argument, %struct.argument* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.argument*, %struct.argument** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.argument, %struct.argument* %28, i64 %30
  call void @query_argument_free(%struct.argument* %31)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.argument*, %struct.argument** %2, align 8
  %37 = getelementptr inbounds %struct.argument, %struct.argument* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.argument*, %struct.argument** %39, align 8
  %41 = bitcast %struct.argument* %40 to i8*
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %35, %9
  ret void
}

declare dso_local i32 @rmsgpack_dom_value_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
