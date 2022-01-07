; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_connection_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_connection_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_connection_t = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_http_connection_iterate(%struct.http_connection_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.http_connection_t*, align 8
  store %struct.http_connection_t* %0, %struct.http_connection_t** %3, align 8
  %4 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %5 = icmp ne %struct.http_connection_t* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %31, %7
  %9 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %10 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 47
  br i1 %14, label %15, label %29

15:                                               ; preds = %8
  %16 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %17 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 58
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %24 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %22, %15, %8
  %30 = phi i1 [ false, %15 ], [ false, %8 ], [ %28, %22 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load %struct.http_connection_t*, %struct.http_connection_t** %3, align 8
  %33 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  br label %8

36:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %6
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
