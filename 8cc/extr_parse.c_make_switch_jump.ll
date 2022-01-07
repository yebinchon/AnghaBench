; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_make_switch_jump.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_make_switch_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@type_int = common dso_local global i32 0, align 4
@OP_EQ = common dso_local global i32 0, align 4
@OP_LE = common dso_local global i32 0, align 4
@OP_LOGAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*)* @make_switch_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_switch_jump(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @type_int, align 4
  %17 = load i32, i32* @OP_EQ, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @type_int, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32* @ast_inttype(i32 %19, i64 %22)
  %24 = call i32* @ast_binop(i32 %16, i32 %17, i32* %18, i32* %23)
  store i32* %24, i32** %5, align 8
  br label %49

25:                                               ; preds = %2
  %26 = load i32, i32* @type_int, align 4
  %27 = load i32, i32* @OP_LE, align 4
  %28 = load i32, i32* @type_int, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32* @ast_inttype(i32 %28, i64 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32* @ast_binop(i32 %26, i32 %27, i32* %32, i32* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32, i32* @type_int, align 4
  %36 = load i32, i32* @OP_LE, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @type_int, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32* @ast_inttype(i32 %38, i64 %41)
  %43 = call i32* @ast_binop(i32 %35, i32 %36, i32* %37, i32* %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* @type_int, align 4
  %45 = load i32, i32* @OP_LOGAND, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @ast_binop(i32 %44, i32 %45, i32* %46, i32* %47)
  store i32* %48, i32** %5, align 8
  br label %49

49:                                               ; preds = %25, %15
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ast_jump(i32 %53)
  %55 = call i32* @ast_if(i32* %50, i32 %54, i32* null)
  ret i32* %55
}

declare dso_local i32* @ast_binop(i32, i32, i32*, i32*) #1

declare dso_local i32* @ast_inttype(i32, i64) #1

declare dso_local i32* @ast_if(i32*, i32, i32*) #1

declare dso_local i32 @ast_jump(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
