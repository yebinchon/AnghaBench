; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_show_help.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_show_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }
%struct.gstr = type { i32 }

@main_window = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @show_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_help(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.gstr, align 4
  %4 = alloca %struct.gstr, align 4
  store %struct.menu* %0, %struct.menu** %2, align 8
  %5 = load %struct.menu*, %struct.menu** %2, align 8
  %6 = icmp ne %struct.menu* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = call i32 (...) @str_new()
  %10 = getelementptr inbounds %struct.gstr, %struct.gstr* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = bitcast %struct.gstr* %3 to i8*
  %12 = bitcast %struct.gstr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load %struct.menu*, %struct.menu** %2, align 8
  %14 = call i32 @menu_get_ext_help(%struct.menu* %13, %struct.gstr* %3)
  %15 = load i32, i32* @main_window, align 4
  %16 = load %struct.menu*, %struct.menu** %2, align 8
  %17 = call i32 @menu_get_prompt(%struct.menu* %16)
  %18 = call i32 @_(i32 %17)
  %19 = call i32 @str_get(%struct.gstr* %3)
  %20 = call i32 @show_scroll_win(i32 %15, i32 %18, i32 %19)
  %21 = call i32 @str_free(%struct.gstr* %3)
  br label %22

22:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @str_new(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @menu_get_ext_help(%struct.menu*, %struct.gstr*) #1

declare dso_local i32 @show_scroll_win(i32, i32, i32) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @menu_get_prompt(%struct.menu*) #1

declare dso_local i32 @str_get(%struct.gstr*) #1

declare dso_local i32 @str_free(%struct.gstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
