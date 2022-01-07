; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_general_608_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_general_608_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i8*, i32, i32, i32, i64, i64, i32, i64, i64 }

@INITIAL_ENC_BUFFER_CAPACITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_write*)* @general_608_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @general_608_init(%struct.s_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s_write*, align 8
  store %struct.s_write* %0, %struct.s_write** %3, align 8
  %4 = load %struct.s_write*, %struct.s_write** %3, align 8
  %5 = getelementptr inbounds %struct.s_write, %struct.s_write* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @INITIAL_ENC_BUFFER_CAPACITY, align 4
  %10 = call i64 @malloc(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.s_write*, %struct.s_write** %3, align 8
  %13 = getelementptr inbounds %struct.s_write, %struct.s_write* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.s_write*, %struct.s_write** %3, align 8
  %15 = getelementptr inbounds %struct.s_write, %struct.s_write* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %52

19:                                               ; preds = %8
  %20 = load i32, i32* @INITIAL_ENC_BUFFER_CAPACITY, align 4
  %21 = load %struct.s_write*, %struct.s_write** %3, align 8
  %22 = getelementptr inbounds %struct.s_write, %struct.s_write* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.s_write*, %struct.s_write** %3, align 8
  %25 = getelementptr inbounds %struct.s_write, %struct.s_write* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = call i64 @malloc(i32 2048)
  %30 = load %struct.s_write*, %struct.s_write** %3, align 8
  %31 = getelementptr inbounds %struct.s_write, %struct.s_write* %30, i32 0, i32 8
  store i64 %29, i64* %31, align 8
  %32 = load %struct.s_write*, %struct.s_write** %3, align 8
  %33 = getelementptr inbounds %struct.s_write, %struct.s_write* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %52

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.s_write*, %struct.s_write** %3, align 8
  %40 = getelementptr inbounds %struct.s_write, %struct.s_write* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  %41 = load %struct.s_write*, %struct.s_write** %3, align 8
  %42 = getelementptr inbounds %struct.s_write, %struct.s_write* %41, i32 0, i32 3
  store i32 1, i32* %42, align 8
  %43 = load %struct.s_write*, %struct.s_write** %3, align 8
  %44 = getelementptr inbounds %struct.s_write, %struct.s_write* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load %struct.s_write*, %struct.s_write** %3, align 8
  %46 = getelementptr inbounds %struct.s_write, %struct.s_write* %45, i32 0, i32 6
  %47 = call i32 @hb_buffer_list_clear(i32* %46)
  %48 = load %struct.s_write*, %struct.s_write** %3, align 8
  %49 = getelementptr inbounds %struct.s_write, %struct.s_write* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.s_write*, %struct.s_write** %3, align 8
  %51 = getelementptr inbounds %struct.s_write, %struct.s_write* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %38, %36, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @hb_buffer_list_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
