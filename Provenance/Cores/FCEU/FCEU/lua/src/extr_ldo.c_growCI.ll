; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldo.c_growCI.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldo.c_growCI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@LUAI_MAXCALLS = common dso_local global i32 0, align 4
@LUA_ERRERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @growCI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @growCI(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @LUAI_MAXCALLS, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = load i32, i32* @LUA_ERRERR, align 4
  %11 = call i32 @luaD_throw(%struct.TYPE_6__* %9, i32 %10)
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 2, %16
  %18 = call i32 @luaD_reallocCI(%struct.TYPE_6__* %13, i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LUAI_MAXCALLS, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = call i32 @luaG_runerror(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %12
  br label %28

28:                                               ; preds = %27, %8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %30, align 8
  ret i32* %32
}

declare dso_local i32 @luaD_throw(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @luaD_reallocCI(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @luaG_runerror(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
