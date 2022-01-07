; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_sym.c_kxld_sym_resolve.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_sym.c_kxld_sym_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@N_ABS = common dso_local global i32 0, align 4
@N_EXT = common dso_local global i32 0, align 4
@NO_SECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_sym_resolve(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i32 @check(%struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i64 @kxld_sym_is_undefined(%struct.TYPE_6__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i64 @kxld_sym_is_indirect(%struct.TYPE_6__* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ true, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @finish, align 4
  %20 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %20, i32* %5, align 4
  %21 = call i32 @require_action(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @N_ABS, align 4
  %26 = load i32, i32* @N_EXT, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @NO_SECT, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @TRUE, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @TRUE, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @FALSE, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @FALSE, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %16
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @check(%struct.TYPE_6__*) #1

declare dso_local i32 @require_action(i32, i32, i32) #1

declare dso_local i64 @kxld_sym_is_undefined(%struct.TYPE_6__*) #1

declare dso_local i64 @kxld_sym_is_indirect(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
