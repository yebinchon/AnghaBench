; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_playlist_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i64, %struct.playlist_entry*, %struct.playlist_entry*, %struct.playlist_entry*, %struct.playlist_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_free(%struct.playlist_entry* %0) #0 {
  %2 = alloca %struct.playlist_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.playlist_entry*, align 8
  store %struct.playlist_entry* %0, %struct.playlist_entry** %2, align 8
  %5 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %6 = icmp ne %struct.playlist_entry* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %75

8:                                                ; preds = %1
  %9 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %10 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %9, i32 0, i32 4
  %11 = load %struct.playlist_entry*, %struct.playlist_entry** %10, align 8
  %12 = icmp ne %struct.playlist_entry* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %15 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %14, i32 0, i32 4
  %16 = load %struct.playlist_entry*, %struct.playlist_entry** %15, align 8
  %17 = call i32 @free(%struct.playlist_entry* %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %20 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %19, i32 0, i32 4
  store %struct.playlist_entry* null, %struct.playlist_entry** %20, align 8
  %21 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %22 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %21, i32 0, i32 3
  %23 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %24 = icmp ne %struct.playlist_entry* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %27 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %26, i32 0, i32 3
  %28 = load %struct.playlist_entry*, %struct.playlist_entry** %27, align 8
  %29 = call i32 @free(%struct.playlist_entry* %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %32 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %31, i32 0, i32 3
  store %struct.playlist_entry* null, %struct.playlist_entry** %32, align 8
  %33 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %34 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %33, i32 0, i32 2
  %35 = load %struct.playlist_entry*, %struct.playlist_entry** %34, align 8
  %36 = icmp ne %struct.playlist_entry* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %39 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %38, i32 0, i32 2
  %40 = load %struct.playlist_entry*, %struct.playlist_entry** %39, align 8
  %41 = call i32 @free(%struct.playlist_entry* %40)
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %44 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %43, i32 0, i32 2
  store %struct.playlist_entry* null, %struct.playlist_entry** %44, align 8
  store i64 0, i64* %3, align 8
  br label %45

45:                                               ; preds = %63, %42
  %46 = load i64, i64* %3, align 8
  %47 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %48 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %53 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %52, i32 0, i32 1
  %54 = load %struct.playlist_entry*, %struct.playlist_entry** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %54, i64 %55
  store %struct.playlist_entry* %56, %struct.playlist_entry** %4, align 8
  %57 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %58 = icmp ne %struct.playlist_entry* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %61 = call i32 @playlist_free_entry(%struct.playlist_entry* %60)
  br label %62

62:                                               ; preds = %59, %51
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %3, align 8
  br label %45

66:                                               ; preds = %45
  %67 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %68 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %67, i32 0, i32 1
  %69 = load %struct.playlist_entry*, %struct.playlist_entry** %68, align 8
  %70 = call i32 @free(%struct.playlist_entry* %69)
  %71 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %72 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %71, i32 0, i32 1
  store %struct.playlist_entry* null, %struct.playlist_entry** %72, align 8
  %73 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %74 = call i32 @free(%struct.playlist_entry* %73)
  br label %75

75:                                               ; preds = %66, %7
  ret void
}

declare dso_local i32 @free(%struct.playlist_entry*) #1

declare dso_local i32 @playlist_free_entry(%struct.playlist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
