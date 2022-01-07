; ModuleID = '/home/carl/AnghaBench/8cc/extr_encoding.c_write_utf8.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_encoding.c_write_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"invalid UCS character: \\U%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_utf8(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 128
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @buf_write(i32* %8, i32 %9)
  br label %74

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2048
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 6
  %18 = or i32 192, %17
  %19 = call i32 @buf_write(i32* %15, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 63
  %23 = or i32 128, %22
  %24 = call i32 @buf_write(i32* %20, i32 %23)
  br label %74

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 65536
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 12
  %32 = or i32 224, %31
  %33 = call i32 @buf_write(i32* %29, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 6
  %37 = and i32 %36, 63
  %38 = or i32 128, %37
  %39 = call i32 @buf_write(i32* %34, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 63
  %43 = or i32 128, %42
  %44 = call i32 @buf_write(i32* %40, i32 %43)
  br label %74

45:                                               ; preds = %25
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 2097152
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 18
  %52 = or i32 240, %51
  %53 = call i32 @buf_write(i32* %49, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = ashr i32 %55, 12
  %57 = and i32 %56, 63
  %58 = or i32 128, %57
  %59 = call i32 @buf_write(i32* %54, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = ashr i32 %61, 6
  %63 = and i32 %62, 63
  %64 = or i32 128, %63
  %65 = call i32 @buf_write(i32* %60, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 63
  %69 = or i32 128, %68
  %70 = call i32 @buf_write(i32* %66, i32 %69)
  br label %74

71:                                               ; preds = %45
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %48, %28, %14, %7
  ret void
}

declare dso_local i32 @buf_write(i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
