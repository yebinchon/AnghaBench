; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_delete_all_for_socket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_delete_all_for_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.secashead = type { i32, %struct.socket*, i32* }
%struct.secasvar = type { i32, %struct.socket*, i32* }

@sahtree = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@saorder_state_alive = common dso_local global i32 0, align 4
@saorder_state_any = common dso_local global i64* null, align 8
@SADB_X_EXT_SA2_DELETE_ON_DETACH = common dso_local global i32 0, align 4
@SADB_SASTATE_DEAD = common dso_local global i32 0, align 4
@KEY_SADB_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @key_delete_all_for_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_delete_all_for_socket(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.secashead*, align 8
  %4 = alloca %struct.secashead*, align 8
  %5 = alloca %struct.secasvar*, align 8
  %6 = alloca %struct.secasvar*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %9 = call %struct.secasvar* @LIST_FIRST(i32* @sahtree)
  %10 = bitcast %struct.secasvar* %9 to %struct.secashead*
  store %struct.secashead* %10, %struct.secashead** %3, align 8
  br label %11

11:                                               ; preds = %70, %1
  %12 = load %struct.secashead*, %struct.secashead** %3, align 8
  %13 = icmp ne %struct.secashead* %12, null
  br i1 %13, label %14, label %72

14:                                               ; preds = %11
  %15 = load %struct.secashead*, %struct.secashead** %3, align 8
  %16 = bitcast %struct.secashead* %15 to %struct.secasvar*
  %17 = load i32, i32* @chain, align 4
  %18 = call %struct.secasvar* @LIST_NEXT(%struct.secasvar* %16, i32 %17)
  %19 = bitcast %struct.secasvar* %18 to %struct.secashead*
  store %struct.secashead* %19, %struct.secashead** %4, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %66, %14
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* @saorder_state_alive, align 4
  %23 = call i64 @_ARRAYLEN(i32 %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %20
  %26 = load i64*, i64** @saorder_state_any, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.secashead*, %struct.secashead** %3, align 8
  %31 = getelementptr inbounds %struct.secashead, %struct.secashead* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call %struct.secasvar* @LIST_FIRST(i32* %34)
  store %struct.secasvar* %35, %struct.secasvar** %5, align 8
  br label %36

36:                                               ; preds = %63, %25
  %37 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %38 = icmp ne %struct.secasvar* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %41 = load i32, i32* @chain, align 4
  %42 = call %struct.secasvar* @LIST_NEXT(%struct.secasvar* %40, i32 %41)
  store %struct.secasvar* %42, %struct.secasvar** %6, align 8
  %43 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %44 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SADB_X_EXT_SA2_DELETE_ON_DETACH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %39
  %50 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %51 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %50, i32 0, i32 1
  %52 = load %struct.socket*, %struct.socket** %51, align 8
  %53 = load %struct.socket*, %struct.socket** %2, align 8
  %54 = icmp eq %struct.socket* %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %57 = load i32, i32* @SADB_SASTATE_DEAD, align 4
  %58 = call i32 @key_sa_chgstate(%struct.secasvar* %56, i32 %57)
  %59 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %60 = load i32, i32* @KEY_SADB_LOCKED, align 4
  %61 = call i32 @key_freesav(%struct.secasvar* %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %49, %39
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.secasvar*, %struct.secasvar** %6, align 8
  store %struct.secasvar* %64, %struct.secasvar** %5, align 8
  br label %36

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %20

69:                                               ; preds = %20
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.secashead*, %struct.secashead** %4, align 8
  store %struct.secashead* %71, %struct.secashead** %3, align 8
  br label %11

72:                                               ; preds = %11
  ret void
}

declare dso_local %struct.secasvar* @LIST_FIRST(i32*) #1

declare dso_local %struct.secasvar* @LIST_NEXT(%struct.secasvar*, i32) #1

declare dso_local i64 @_ARRAYLEN(i32) #1

declare dso_local i32 @key_sa_chgstate(%struct.secasvar*, i32) #1

declare dso_local i32 @key_freesav(%struct.secasvar*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
