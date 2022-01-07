; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_connection_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http.c_net_http_connection_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_connection_t = type { %struct.http_connection_t*, %struct.http_connection_t*, %struct.http_connection_t*, %struct.http_connection_t*, %struct.http_connection_t* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_http_connection_free(%struct.http_connection_t* %0) #0 {
  %2 = alloca %struct.http_connection_t*, align 8
  store %struct.http_connection_t* %0, %struct.http_connection_t** %2, align 8
  %3 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %4 = icmp ne %struct.http_connection_t* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %69

6:                                                ; preds = %1
  %7 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %8 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %7, i32 0, i32 4
  %9 = load %struct.http_connection_t*, %struct.http_connection_t** %8, align 8
  %10 = icmp ne %struct.http_connection_t* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %13 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %12, i32 0, i32 4
  %14 = load %struct.http_connection_t*, %struct.http_connection_t** %13, align 8
  %15 = call i32 @free(%struct.http_connection_t* %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %18 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %17, i32 0, i32 3
  %19 = load %struct.http_connection_t*, %struct.http_connection_t** %18, align 8
  %20 = icmp ne %struct.http_connection_t* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %23 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %22, i32 0, i32 3
  %24 = load %struct.http_connection_t*, %struct.http_connection_t** %23, align 8
  %25 = call i32 @free(%struct.http_connection_t* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %28 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %27, i32 0, i32 2
  %29 = load %struct.http_connection_t*, %struct.http_connection_t** %28, align 8
  %30 = icmp ne %struct.http_connection_t* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %33 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %32, i32 0, i32 2
  %34 = load %struct.http_connection_t*, %struct.http_connection_t** %33, align 8
  %35 = call i32 @free(%struct.http_connection_t* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %38 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %37, i32 0, i32 1
  %39 = load %struct.http_connection_t*, %struct.http_connection_t** %38, align 8
  %40 = icmp ne %struct.http_connection_t* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %43 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %42, i32 0, i32 1
  %44 = load %struct.http_connection_t*, %struct.http_connection_t** %43, align 8
  %45 = call i32 @free(%struct.http_connection_t* %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %48 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %47, i32 0, i32 0
  %49 = load %struct.http_connection_t*, %struct.http_connection_t** %48, align 8
  %50 = icmp ne %struct.http_connection_t* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %53 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %52, i32 0, i32 0
  %54 = load %struct.http_connection_t*, %struct.http_connection_t** %53, align 8
  %55 = call i32 @free(%struct.http_connection_t* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %58 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %57, i32 0, i32 4
  store %struct.http_connection_t* null, %struct.http_connection_t** %58, align 8
  %59 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %60 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %59, i32 0, i32 3
  store %struct.http_connection_t* null, %struct.http_connection_t** %60, align 8
  %61 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %62 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %61, i32 0, i32 2
  store %struct.http_connection_t* null, %struct.http_connection_t** %62, align 8
  %63 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %64 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %63, i32 0, i32 1
  store %struct.http_connection_t* null, %struct.http_connection_t** %64, align 8
  %65 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %66 = getelementptr inbounds %struct.http_connection_t, %struct.http_connection_t* %65, i32 0, i32 0
  store %struct.http_connection_t* null, %struct.http_connection_t** %66, align 8
  %67 = load %struct.http_connection_t*, %struct.http_connection_t** %2, align 8
  %68 = call i32 @free(%struct.http_connection_t* %67)
  br label %69

69:                                               ; preds = %56, %5
  ret void
}

declare dso_local i32 @free(%struct.http_connection_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
