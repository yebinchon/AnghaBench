; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_sa_stir_iv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_sa_stir_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i32 }

@sadb_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"key_sa_stir_iv called with sav == NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_sa_stir_iv(%struct.secasvar* %0) #0 {
  %2 = alloca %struct.secasvar*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %2, align 8
  %3 = load i32, i32* @sadb_mutex, align 4
  %4 = call i32 @lck_mtx_lock(i32 %3)
  %5 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %6 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %13 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %16 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @key_randomfill(i32 %14, i32 %17)
  %19 = load i32, i32* @sadb_mutex, align 4
  %20 = call i32 @lck_mtx_unlock(i32 %19)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @key_randomfill(i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
