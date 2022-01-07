; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_ifinfo.c_net_ifinfo_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_ifinfo.c_net_ifinfo_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }
%struct.net_ifinfo_entry = type { i64*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_ifinfo_free(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_ifinfo_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %57

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %49, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = bitcast i64* %21 to %struct.net_ifinfo_entry*
  store %struct.net_ifinfo_entry* %22, %struct.net_ifinfo_entry** %4, align 8
  %23 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %4, align 8
  %24 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %4, align 8
  %30 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = call i32 @free(i64* %31)
  br label %33

33:                                               ; preds = %28, %15
  %34 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %4, align 8
  %35 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %4, align 8
  %41 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @free(i64* %42)
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %4, align 8
  %46 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %45, i32 0, i32 1
  store i64* null, i64** %46, align 8
  %47 = load %struct.net_ifinfo_entry*, %struct.net_ifinfo_entry** %4, align 8
  %48 = getelementptr inbounds %struct.net_ifinfo_entry, %struct.net_ifinfo_entry* %47, i32 0, i32 0
  store i64* null, i64** %48, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %9

52:                                               ; preds = %9
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @free(i64* %55)
  br label %57

57:                                               ; preds = %52, %7
  ret void
}

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
