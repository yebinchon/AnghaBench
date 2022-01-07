; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_freeobj.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_freeobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_17__*)* @freeobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeobj(i32* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %70 [
    i32 133, label %9
    i32 134, label %14
    i32 129, label %19
    i32 131, label %24
    i32 130, label %29
    i32 132, label %50
    i32 128, label %63
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = call i32 @gco2p(%struct.TYPE_17__* %11)
  %13 = call i32 @luaF_freeproto(i32* %10, i32 %12)
  br label %72

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = call i32 @gco2cl(%struct.TYPE_17__* %16)
  %18 = call i32 @luaF_freeclosure(i32* %15, i32 %17)
  br label %72

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = call i32 @gco2uv(%struct.TYPE_17__* %21)
  %23 = call i32 @luaF_freeupval(i32* %20, i32 %22)
  br label %72

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = call i32 @gco2h(%struct.TYPE_17__* %26)
  %28 = call i32 @luaH_free(i32* %25, i32 %27)
  br label %72

29:                                               ; preds = %2
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = call i32* @gco2th(%struct.TYPE_17__* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = icmp ne i32* %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = call i32* @gco2th(%struct.TYPE_17__* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call %struct.TYPE_14__* @G(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %36, %40
  br label %42

42:                                               ; preds = %34, %29
  %43 = phi i1 [ false, %29 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @lua_assert(i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = call i32* @gco2th(%struct.TYPE_17__* %47)
  %49 = call i32 @luaE_freethread(i32* %46, i32* %48)
  br label %72

50:                                               ; preds = %2
  %51 = load i32*, i32** %3, align 8
  %52 = call %struct.TYPE_14__* @G(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = call i32 @gco2ts(%struct.TYPE_17__* %59)
  %61 = call i32 @sizestring(i32 %60)
  %62 = call i32 @luaM_freemem(i32* %57, %struct.TYPE_17__* %58, i32 %61)
  br label %72

63:                                               ; preds = %2
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = call i32 @gco2u(%struct.TYPE_17__* %66)
  %68 = call i32 @sizeudata(i32 %67)
  %69 = call i32 @luaM_freemem(i32* %64, %struct.TYPE_17__* %65, i32 %68)
  br label %72

70:                                               ; preds = %2
  %71 = call i32 @lua_assert(i32 0)
  br label %72

72:                                               ; preds = %70, %63, %50, %42, %24, %19, %14, %9
  ret void
}

declare dso_local i32 @luaF_freeproto(i32*, i32) #1

declare dso_local i32 @gco2p(%struct.TYPE_17__*) #1

declare dso_local i32 @luaF_freeclosure(i32*, i32) #1

declare dso_local i32 @gco2cl(%struct.TYPE_17__*) #1

declare dso_local i32 @luaF_freeupval(i32*, i32) #1

declare dso_local i32 @gco2uv(%struct.TYPE_17__*) #1

declare dso_local i32 @luaH_free(i32*, i32) #1

declare dso_local i32 @gco2h(%struct.TYPE_17__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32* @gco2th(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_14__* @G(i32*) #1

declare dso_local i32 @luaE_freethread(i32*, i32*) #1

declare dso_local i32 @luaM_freemem(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @sizestring(i32) #1

declare dso_local i32 @gco2ts(%struct.TYPE_17__*) #1

declare dso_local i32 @sizeudata(i32) #1

declare dso_local i32 @gco2u(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
