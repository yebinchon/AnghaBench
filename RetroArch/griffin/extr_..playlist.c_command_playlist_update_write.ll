; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_command_playlist_update_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_command_playlist_update_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command_playlist_update_write(i32* %0, i64 %1, %struct.playlist_entry* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.playlist_entry*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.playlist_entry* %2, %struct.playlist_entry** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  br label %14

12:                                               ; preds = %3
  %13 = call i32* (...) @playlist_get_cached()
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32* [ %11, %10 ], [ %13, %12 ]
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %26

19:                                               ; preds = %14
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %23 = call i32 @playlist_update(i32* %20, i64 %21, %struct.playlist_entry* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @playlist_write_file(i32* %24)
  br label %26

26:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @playlist_update(i32*, i64, %struct.playlist_entry*) #1

declare dso_local i32 @playlist_write_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
