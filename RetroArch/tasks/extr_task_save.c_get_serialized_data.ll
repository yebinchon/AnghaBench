; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_get_serialized_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_get_serialized_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@.str = private unnamed_addr constant [12 x i8] c"%s: %d %s.\0A\00", align 1
@MSG_STATE_SIZE = common dso_local global i32 0, align 4
@MSG_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @get_serialized_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_serialized_data(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %38

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %38

18:                                               ; preds = %12
  %19 = load i32, i32* @MSG_STATE_SIZE, align 4
  %20 = call i32 @msg_hash_to_str(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @MSG_BYTES, align 4
  %24 = call i32 @msg_hash_to_str(i32 %23)
  %25 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22, i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = call i32 @core_serialize(%struct.TYPE_3__* %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @free(i8* %34)
  store i8* null, i8** %3, align 8
  br label %38

36:                                               ; preds = %18
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %36, %33, %17, %11
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @core_serialize(%struct.TYPE_3__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
