; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_NewBuf.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_NewBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i8* }

@INIT_BUF_SIZE = common dso_local global i32 0, align 4
@KS_NEWBUF_COUNT = common dso_local global i32 0, align 4
@KS_CURRENT_BUF_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @NewBuf() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = call i8* @Malloc(i32 32)
  %3 = bitcast i8* %2 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  %4 = load i32, i32* @INIT_BUF_SIZE, align 4
  %5 = call i8* @Malloc(i32 %4)
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i8* %5, i8** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @INIT_BUF_SIZE, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @KS_NEWBUF_COUNT, align 4
  %16 = call i32 @KS_INC(i32 %15)
  %17 = load i32, i32* @KS_CURRENT_BUF_COUNT, align 4
  %18 = call i32 @KS_INC(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  ret %struct.TYPE_3__* %19
}

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @KS_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
