; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_concat.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_wpabuf.c_wpabuf_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %9 = icmp eq %struct.wpabuf* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %11, %struct.wpabuf** %3, align 8
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %14 = icmp ne %struct.wpabuf* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %17 = call i64 @wpabuf_len(%struct.wpabuf* %16)
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %22 = icmp ne %struct.wpabuf* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %25 = call i64 @wpabuf_len(%struct.wpabuf* %24)
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.wpabuf* @wpabuf_alloc(i64 %29)
  store %struct.wpabuf* %30, %struct.wpabuf** %6, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %32 = icmp ne %struct.wpabuf* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %35 = icmp ne %struct.wpabuf* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %39 = call i32 @wpabuf_put_buf(%struct.wpabuf* %37, %struct.wpabuf* %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %42 = icmp ne %struct.wpabuf* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %46 = call i32 @wpabuf_put_buf(%struct.wpabuf* %44, %struct.wpabuf* %45)
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %50 = call i32 @wpabuf_free(%struct.wpabuf* %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = call i32 @wpabuf_free(%struct.wpabuf* %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %53, %struct.wpabuf** %3, align 8
  br label %54

54:                                               ; preds = %48, %10
  %55 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %55
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
