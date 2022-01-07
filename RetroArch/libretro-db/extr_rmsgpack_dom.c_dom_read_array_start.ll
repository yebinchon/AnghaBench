; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_dom.c_dom_read_array_start.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_dom.c_dom_read_array_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_reader_state = type { i32 }
%struct.rmsgpack_dom_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.rmsgpack_dom_value* }

@RDT_ARRAY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dom_read_array_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dom_read_array_start(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dom_reader_state*, align 8
  %8 = alloca %struct.rmsgpack_dom_value*, align 8
  %9 = alloca %struct.rmsgpack_dom_value*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.dom_reader_state*
  store %struct.dom_reader_state* %11, %struct.dom_reader_state** %7, align 8
  %12 = load %struct.dom_reader_state*, %struct.dom_reader_state** %7, align 8
  %13 = call %struct.rmsgpack_dom_value* @dom_reader_state_pop(%struct.dom_reader_state* %12)
  store %struct.rmsgpack_dom_value* %13, %struct.rmsgpack_dom_value** %8, align 8
  store %struct.rmsgpack_dom_value* null, %struct.rmsgpack_dom_value** %9, align 8
  %14 = load i32, i32* @RDT_ARRAY, align 4
  %15 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %8, align 8
  %16 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %8, align 8
  %19 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 8
  %22 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %8, align 8
  %23 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store %struct.rmsgpack_dom_value* null, %struct.rmsgpack_dom_value** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @calloc(i32 %26, i32 24)
  %28 = inttoptr i64 %27 to %struct.rmsgpack_dom_value*
  store %struct.rmsgpack_dom_value* %28, %struct.rmsgpack_dom_value** %9, align 8
  %29 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %9, align 8
  %30 = icmp ne %struct.rmsgpack_dom_value* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %60

34:                                               ; preds = %2
  %35 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %9, align 8
  %36 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %8, align 8
  %37 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store %struct.rmsgpack_dom_value* %35, %struct.rmsgpack_dom_value** %39, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %56, %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.dom_reader_state*, %struct.dom_reader_state** %7, align 8
  %46 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %46, i64 %48
  %50 = call i64 @dom_reader_state_push(%struct.dom_reader_state* %45, %struct.rmsgpack_dom_value* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %40

59:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %52, %31
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.rmsgpack_dom_value* @dom_reader_state_pop(%struct.dom_reader_state*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @dom_reader_state_push(%struct.dom_reader_state*, %struct.rmsgpack_dom_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
