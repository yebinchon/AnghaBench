; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_menu.c_menu_set_type.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_menu.c_menu_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.symbol* }
%struct.symbol = type { i32, i8* }

@current_entry = common dso_local global %struct.TYPE_3__* null, align 8
@S_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ignoring type redefinition of '%s' from '%s' to '%s'\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"<choice>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_set_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.symbol*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_entry, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.symbol*, %struct.symbol** %5, align 8
  store %struct.symbol* %6, %struct.symbol** %3, align 8
  %7 = load %struct.symbol*, %struct.symbol** %3, align 8
  %8 = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.symbol*, %struct.symbol** %3, align 8
  %15 = getelementptr inbounds %struct.symbol, %struct.symbol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @S_UNKNOWN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.symbol*, %struct.symbol** %3, align 8
  %22 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %43

23:                                               ; preds = %13
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_entry, align 8
  %25 = load %struct.symbol*, %struct.symbol** %3, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.symbol*, %struct.symbol** %3, align 8
  %31 = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %33 ]
  %36 = load %struct.symbol*, %struct.symbol** %3, align 8
  %37 = getelementptr inbounds %struct.symbol, %struct.symbol* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sym_type_name(i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @sym_type_name(i32 %40)
  %42 = call i32 @menu_warn(%struct.TYPE_3__* %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %34, %19, %12
  ret void
}

declare dso_local i32 @menu_warn(%struct.TYPE_3__*, i8*, i8*, i32, i32) #1

declare dso_local i32 @sym_type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
