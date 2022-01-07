; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_content_load_ram_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_content_load_ram_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ram_type = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [90 x i8] c"SRAM is larger than implementation expects, doing partial load (truncating %u %s %s %u).\0A\00", align 1
@MSG_BYTES = common dso_local global i32 0, align 4
@MSG_TO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @content_load_ram_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ram_type, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @content_get_memory(%struct.TYPE_3__* %6, %struct.ram_type* %5, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ram_type, %struct.ram_type* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @filestream_read_file(i32 %14, i8** %7, i64* %4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %52

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @MSG_BYTES, align 4
  %30 = call i32 @msg_hash_to_str(i32 %29)
  %31 = load i32, i32* @MSG_TO, align 4
  %32 = call i32 @msg_hash_to_str(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %26, %21
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @memcpy(i32 %41, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %39, %18
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %48, %45
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %17, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @content_get_memory(%struct.TYPE_3__*, %struct.ram_type*, i32) #1

declare dso_local i32 @filestream_read_file(i32, i8**, i64*) #1

declare dso_local i32 @RARCH_WARN(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
