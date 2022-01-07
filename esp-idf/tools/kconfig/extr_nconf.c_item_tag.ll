; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_item_tag.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_item_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mitem = type { i8 }

@curses_menu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @item_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @item_tag() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mitem*, align 8
  %4 = load i32, i32* @curses_menu, align 4
  %5 = call i32* @current_item(i32 %4)
  store i32* %5, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i8 0, i8* %1, align 1
  br label %16

9:                                                ; preds = %0
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @item_userptr(i32* %10)
  %12 = inttoptr i64 %11 to %struct.mitem*
  store %struct.mitem* %12, %struct.mitem** %3, align 8
  %13 = load %struct.mitem*, %struct.mitem** %3, align 8
  %14 = getelementptr inbounds %struct.mitem, %struct.mitem* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %1, align 1
  br label %16

16:                                               ; preds = %9, %8
  %17 = load i8, i8* %1, align 1
  ret i8 %17
}

declare dso_local i32* @current_item(i32) #1

declare dso_local i64 @item_userptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
