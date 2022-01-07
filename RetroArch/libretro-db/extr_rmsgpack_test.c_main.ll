; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_test.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_state = type { i64*, i64 }

@.str = private unnamed_addr constant [13 x i8] c"test.msgpack\00", align 1
@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@stub_callbacks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Test succeeded.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stub_state, align 8
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %5 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %6 = call i32* @filestream_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5)
  store i32* %6, i32** %3, align 8
  %7 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %2, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.stub_state, %struct.stub_state* %2, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 0, i64* %10, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @rmsgpack_read(i32* %11, i32* @stub_callbacks, %struct.stub_state* %2)
  %13 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @filestream_close(i32* %14)
  ret i32 0
}

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i32 @rmsgpack_read(i32*, i32*, %struct.stub_state*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @filestream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
