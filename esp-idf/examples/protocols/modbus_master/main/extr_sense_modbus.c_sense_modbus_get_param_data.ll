; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_modbus.c_sense_modbus_get_param_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_modbus.c_sense_modbus_get_param_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@holding_reg_params = common dso_local global i32 0, align 4
@input_reg_params = common dso_local global i32 0, align 4
@coil_reg_params = common dso_local global i32 0, align 4
@discrete_reg_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @sense_modbus_get_param_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sense_modbus_get_param_data(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  store i8* null, i8** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %44 [
    i32 129, label %16
    i32 128, label %23
    i32 131, label %30
    i32 130, label %37
  ]

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 ptrtoint (i32* @holding_reg_params to i64), %19
  %21 = sub nsw i64 %20, 1
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %3, align 8
  br label %45

23:                                               ; preds = %12
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 ptrtoint (i32* @input_reg_params to i64), %26
  %28 = sub nsw i64 %27, 1
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %3, align 8
  br label %45

30:                                               ; preds = %12
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 ptrtoint (i32* @coil_reg_params to i64), %33
  %35 = sub nsw i64 %34, 1
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %3, align 8
  br label %45

37:                                               ; preds = %12
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 ptrtoint (i32* @discrete_reg_params to i64), %40
  %42 = sub nsw i64 %41, 1
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %3, align 8
  br label %45

44:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %45

45:                                               ; preds = %44, %37, %30, %23, %16
  br label %51

46:                                               ; preds = %1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @malloc(i64 %49)
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
