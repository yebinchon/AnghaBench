; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_newsp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_newsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicy = type { i32, i32* }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.secpolicy* @key_newsp() #0 {
  %1 = alloca %struct.secpolicy*, align 8
  %2 = alloca %struct.secpolicy*, align 8
  store %struct.secpolicy* null, %struct.secpolicy** %2, align 8
  %3 = load i32, i32* @sadb_mutex, align 4
  %4 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %5 = call i32 @LCK_MTX_ASSERT(i32 %3, i32 %4)
  %6 = call %struct.secpolicy* (...) @keydb_newsecpolicy()
  store %struct.secpolicy* %6, %struct.secpolicy** %2, align 8
  %7 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %8 = icmp ne %struct.secpolicy* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  store %struct.secpolicy* %10, %struct.secpolicy** %1, align 8
  br label %17

11:                                               ; preds = %0
  %12 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %13 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %15 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  store %struct.secpolicy* %16, %struct.secpolicy** %1, align 8
  br label %17

17:                                               ; preds = %11, %9
  %18 = load %struct.secpolicy*, %struct.secpolicy** %1, align 8
  ret %struct.secpolicy* %18
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.secpolicy* @keydb_newsecpolicy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
