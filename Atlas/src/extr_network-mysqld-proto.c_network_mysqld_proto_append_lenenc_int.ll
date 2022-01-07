; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_append_lenenc_int.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_append_lenenc_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_append_lenenc_int(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 251
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @g_string_append_c(i32* %8, i32 %9)
  br label %93

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 65536
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @g_string_append_c(i32* %15, i32 252)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 0
  %20 = and i32 %19, 255
  %21 = call i32 @g_string_append_c(i32* %17, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = call i32 @g_string_append_c(i32* %22, i32 %25)
  br label %92

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 16777216
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @g_string_append_c(i32* %31, i32 253)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 0
  %36 = and i32 %35, 255
  %37 = call i32 @g_string_append_c(i32* %33, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = call i32 @g_string_append_c(i32* %38, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = call i32 @g_string_append_c(i32* %43, i32 %46)
  br label %91

48:                                               ; preds = %27
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @g_string_append_c(i32* %49, i32 254)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, 0
  %54 = and i32 %53, 255
  %55 = call i32 @g_string_append_c(i32* %51, i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = call i32 @g_string_append_c(i32* %56, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = call i32 @g_string_append_c(i32* %61, i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = ashr i32 %67, 24
  %69 = and i32 %68, 255
  %70 = call i32 @g_string_append_c(i32* %66, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = ashr i32 %72, 32
  %74 = and i32 %73, 255
  %75 = call i32 @g_string_append_c(i32* %71, i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = ashr i32 %77, 40
  %79 = and i32 %78, 255
  %80 = call i32 @g_string_append_c(i32* %76, i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = ashr i32 %82, 48
  %84 = and i32 %83, 255
  %85 = call i32 @g_string_append_c(i32* %81, i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = ashr i32 %87, 56
  %89 = and i32 %88, 255
  %90 = call i32 @g_string_append_c(i32* %86, i32 %89)
  br label %91

91:                                               ; preds = %48, %30
  br label %92

92:                                               ; preds = %91, %14
  br label %93

93:                                               ; preds = %92, %7
  ret i32 0
}

declare dso_local i32 @g_string_append_c(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
