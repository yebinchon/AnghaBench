; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_command_playlist_push_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_command_playlist_push_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @command_playlist_push_write(i32* %0, %struct.playlist_entry* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.playlist_entry*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.playlist_entry* %1, %struct.playlist_entry** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %16

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %11 = call i64 @playlist_push(i32* %9, %struct.playlist_entry* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @playlist_write_file(i32* %14)
  br label %16

16:                                               ; preds = %7, %13, %8
  ret void
}

declare dso_local i64 @playlist_push(i32*, %struct.playlist_entry*) #1

declare dso_local i32 @playlist_write_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
