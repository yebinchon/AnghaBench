; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_delsah.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_delsah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secashead = type { %struct.secashead*, %struct.secashead*, i32*, i32, i32* }
%struct.secasvar = type { i64, i32*, i32 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"key_delsah: NULL pointer is passed.\0A\00", align 1
@saorder_state_any = common dso_local global i64* null, align 8
@chain = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"key_delsah\00", align 1
@KEY_SADB_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_delsah(%struct.secashead* %0) #0 {
  %2 = alloca %struct.secashead*, align 8
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca %struct.secasvar*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.secashead* %0, %struct.secashead** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @sadb_mutex, align 4
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32 %8, i32 %9)
  %11 = load %struct.secashead*, %struct.secashead** %2, align 8
  %12 = icmp eq %struct.secashead* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %61, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64*, i64** @saorder_state_any, align 8
  %19 = call i64 @_ARRAYLEN(i64* %18)
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %16
  %22 = load i64*, i64** @saorder_state_any, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.secashead*, %struct.secashead** %2, align 8
  %27 = getelementptr inbounds %struct.secashead, %struct.secashead* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i64 @LIST_FIRST(i32* %30)
  %32 = inttoptr i64 %31 to %struct.secasvar*
  store %struct.secasvar* %32, %struct.secasvar** %3, align 8
  br label %33

33:                                               ; preds = %58, %21
  %34 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %35 = icmp ne %struct.secasvar* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %38 = load i32, i32* @chain, align 4
  %39 = call %struct.secasvar* @LIST_NEXT(%struct.secasvar* %37, i32 %38)
  store %struct.secasvar* %39, %struct.secasvar** %4, align 8
  %40 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %41 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %58

47:                                               ; preds = %36
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %50 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @KEY_CHKSASTATE(i64 %48, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %54 = load i32, i32* @KEY_SADB_LOCKED, align 4
  %55 = call i32 @key_freesav(%struct.secasvar* %53, i32 %54)
  %56 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %57 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  store %struct.secasvar* null, %struct.secasvar** %3, align 8
  br label %58

58:                                               ; preds = %47, %44
  %59 = load %struct.secasvar*, %struct.secasvar** %4, align 8
  store %struct.secasvar* %59, %struct.secasvar** %3, align 8
  br label %33

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %114

68:                                               ; preds = %64
  %69 = load %struct.secashead*, %struct.secashead** %2, align 8
  %70 = getelementptr inbounds %struct.secashead, %struct.secashead* %69, i32 0, i32 3
  %71 = call i32 @ROUTE_RELEASE(i32* %70)
  %72 = load %struct.secashead*, %struct.secashead** %2, align 8
  %73 = getelementptr inbounds %struct.secashead, %struct.secashead* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.secashead*, %struct.secashead** %2, align 8
  %78 = getelementptr inbounds %struct.secashead, %struct.secashead* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ifnet_release(i32* %79)
  %81 = load %struct.secashead*, %struct.secashead** %2, align 8
  %82 = getelementptr inbounds %struct.secashead, %struct.secashead* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %68
  %84 = load %struct.secashead*, %struct.secashead** %2, align 8
  %85 = getelementptr inbounds %struct.secashead, %struct.secashead* %84, i32 0, i32 1
  %86 = load %struct.secashead*, %struct.secashead** %85, align 8
  %87 = icmp ne %struct.secashead* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.secashead*, %struct.secashead** %2, align 8
  %90 = getelementptr inbounds %struct.secashead, %struct.secashead* %89, i32 0, i32 1
  %91 = load %struct.secashead*, %struct.secashead** %90, align 8
  %92 = call i32 @KFREE(%struct.secashead* %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.secashead*, %struct.secashead** %2, align 8
  %95 = getelementptr inbounds %struct.secashead, %struct.secashead* %94, i32 0, i32 0
  %96 = load %struct.secashead*, %struct.secashead** %95, align 8
  %97 = icmp ne %struct.secashead* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.secashead*, %struct.secashead** %2, align 8
  %100 = getelementptr inbounds %struct.secashead, %struct.secashead* %99, i32 0, i32 0
  %101 = load %struct.secashead*, %struct.secashead** %100, align 8
  %102 = call i32 @KFREE(%struct.secashead* %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.secashead*, %struct.secashead** %2, align 8
  %105 = call i64 @__LIST_CHAINED(%struct.secashead* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.secashead*, %struct.secashead** %2, align 8
  %109 = load i32, i32* @chain, align 4
  %110 = call i32 @LIST_REMOVE(%struct.secashead* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load %struct.secashead*, %struct.secashead** %2, align 8
  %113 = call i32 @KFREE(%struct.secashead* %112)
  br label %114

114:                                              ; preds = %111, %67
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @_ARRAYLEN(i64*) #1

declare dso_local i64 @LIST_FIRST(i32*) #1

declare dso_local %struct.secasvar* @LIST_NEXT(%struct.secasvar*, i32) #1

declare dso_local i32 @KEY_CHKSASTATE(i64, i32, i8*) #1

declare dso_local i32 @key_freesav(%struct.secasvar*, i32) #1

declare dso_local i32 @ROUTE_RELEASE(i32*) #1

declare dso_local i32 @ifnet_release(i32*) #1

declare dso_local i32 @KFREE(%struct.secashead*) #1

declare dso_local i64 @__LIST_CHAINED(%struct.secashead*) #1

declare dso_local i32 @LIST_REMOVE(%struct.secashead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
