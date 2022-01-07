; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_prof.c_bbexit.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_prof.c_bbexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@bbexit.epilogue = internal global %struct.TYPE_6__* null, align 8
@EXTERN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"_epilogue\00", align 1
@inttype = common dso_local global i32 0, align 4
@voidptype = common dso_local global i32 0, align 4
@voidtype = common dso_local global i32 0, align 4
@afunc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*, i32)* @bbexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbexit(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bbexit.epilogue, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i32, i32* @EXTERN, align 4
  %11 = load i32, i32* @inttype, align 4
  %12 = load i32, i32* @voidptype, align 4
  %13 = call i32 @ftype(i32 %11, i32 %12)
  %14 = call %struct.TYPE_6__* @mksymbol(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** @bbexit.epilogue, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bbexit.epilogue, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %9, %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bbexit.epilogue, align 8
  %19 = load i32, i32* @voidtype, align 4
  %20 = load i32, i32* @afunc, align 4
  %21 = call i32 @idtree(i32 %20)
  %22 = call i32 @pointer(i32 %21)
  %23 = call i32 @vcall(%struct.TYPE_6__* %18, i32 %19, i32 %22, i32* null)
  %24 = call i32 @walk(i32 %23, i32 0, i32 0)
  ret void
}

declare dso_local %struct.TYPE_6__* @mksymbol(i32, i8*, i32) #1

declare dso_local i32 @ftype(i32, i32) #1

declare dso_local i32 @walk(i32, i32, i32) #1

declare dso_local i32 @vcall(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @pointer(i32) #1

declare dso_local i32 @idtree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
