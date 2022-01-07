; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_do_get_translated_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_do_get_translated_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secashead = type { i32* }
%struct.secasvar = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"key_do_get_translated_port\00", align 1
@SADB_X_EXT_NATT_MULTIPLEUSERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"key_do_get_translated_port: lifetime_current is NULL.\0A\00", align 1
@key_preferred_oldsa = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secashead*, %struct.secasvar*, i64)* @key_do_get_translated_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_do_get_translated_port(%struct.secashead* %0, %struct.secasvar* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.secashead*, align 8
  %6 = alloca %struct.secasvar*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.secasvar*, align 8
  %9 = alloca %struct.secasvar*, align 8
  %10 = alloca %struct.secasvar*, align 8
  store %struct.secashead* %0, %struct.secashead** %5, align 8
  store %struct.secasvar* %1, %struct.secasvar** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @sadb_mutex, align 4
  %12 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %13 = call i32 @LCK_MTX_ASSERT(i32 %11, i32 %12)
  store %struct.secasvar* null, %struct.secasvar** %10, align 8
  %14 = load %struct.secashead*, %struct.secashead** %5, align 8
  %15 = getelementptr inbounds %struct.secashead, %struct.secashead* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call %struct.secasvar* @LIST_FIRST(i32* %18)
  store %struct.secasvar* %19, %struct.secasvar** %8, align 8
  br label %20

20:                                               ; preds = %97, %3
  %21 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  %22 = icmp ne %struct.secasvar* %21, null
  br i1 %22, label %23, label %99

23:                                               ; preds = %20
  %24 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  %25 = load i32, i32* @chain, align 4
  %26 = call %struct.secasvar* @LIST_NEXT(%struct.secasvar* %24, i32 %25)
  store %struct.secasvar* %26, %struct.secasvar** %9, align 8
  %27 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  %28 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @KEY_CHKSASTATE(i32 %29, i64 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  %33 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SADB_X_EXT_NATT_MULTIPLEUSERS, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %23
  %39 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  %40 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.secasvar*, %struct.secasvar** %6, align 8
  %43 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %23
  br label %97

47:                                               ; preds = %38
  %48 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  %49 = icmp eq %struct.secasvar* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  store %struct.secasvar* %51, %struct.secasvar** %10, align 8
  br label %97

52:                                               ; preds = %47
  %53 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  %54 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = icmp eq %struct.TYPE_2__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  %59 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = icmp eq %struct.TYPE_2__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %52
  %63 = call i32 @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i64, i64* @key_preferred_oldsa, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  %69 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  %74 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %72, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  store %struct.secasvar* %80, %struct.secasvar** %10, align 8
  br label %81

81:                                               ; preds = %79, %67
  br label %97

82:                                               ; preds = %64
  %83 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  %84 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  %89 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %87, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load %struct.secasvar*, %struct.secasvar** %8, align 8
  store %struct.secasvar* %95, %struct.secasvar** %10, align 8
  br label %96

96:                                               ; preds = %94, %82
  br label %97

97:                                               ; preds = %96, %81, %50, %46
  %98 = load %struct.secasvar*, %struct.secasvar** %9, align 8
  store %struct.secasvar* %98, %struct.secasvar** %8, align 8
  br label %20

99:                                               ; preds = %20
  %100 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  %101 = icmp ne %struct.secasvar* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.secasvar*, %struct.secasvar** %10, align 8
  %104 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.secasvar*, %struct.secasvar** %6, align 8
  %107 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  store i32 1, i32* %4, align 4
  br label %109

108:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %102
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.secasvar* @LIST_FIRST(i32*) #1

declare dso_local %struct.secasvar* @LIST_NEXT(%struct.secasvar*, i32) #1

declare dso_local i32 @KEY_CHKSASTATE(i32, i64, i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
