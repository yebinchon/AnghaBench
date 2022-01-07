; ModuleID = '/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread_local_storage.c_pthread_key_delete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/pthread/extr_pthread_local_storage.c_pthread_key_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_keys_lock = common dso_local global i32 0, align 4
@s_keys = common dso_local global i32 0, align 4
@key_entry_t_ = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_key_delete(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @portENTER_CRITICAL(i32* @s_keys_lock)
  %5 = load i32, i32* %2, align 4
  %6 = call i32* @find_key(i32 %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @key_entry_t_, align 4
  %12 = load i32, i32* @next, align 4
  %13 = call i32 @SLIST_REMOVE(i32* @s_keys, i32* %10, i32 %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @free(i32* %14)
  br label %16

16:                                               ; preds = %9, %1
  %17 = call i32 @portEXIT_CRITICAL(i32* @s_keys_lock)
  ret i32 0
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32* @find_key(i32) #1

declare dso_local i32 @SLIST_REMOVE(i32*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
