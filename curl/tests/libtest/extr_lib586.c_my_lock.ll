; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib586.c_my_lock.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib586.c_my_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userdata = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dns\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ssl_session\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"lock: no such data: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"lock:   %-6s [%s]: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i8*)* @my_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_lock(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.userdata*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.userdata*
  store %struct.userdata* %12, %struct.userdata** %10, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %20 [
    i32 129, label %16
    i32 130, label %17
    i32 131, label %18
    i32 128, label %19
  ]

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %24

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %24

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %24

19:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  br label %37

24:                                               ; preds = %19, %18, %17, %16
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.userdata*, %struct.userdata** %10, align 8
  %27 = getelementptr inbounds %struct.userdata, %struct.userdata* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.userdata*, %struct.userdata** %10, align 8
  %30 = getelementptr inbounds %struct.userdata, %struct.userdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %25, i8* %28, i32 %31)
  %33 = load %struct.userdata*, %struct.userdata** %10, align 8
  %34 = getelementptr inbounds %struct.userdata, %struct.userdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %24, %20
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
