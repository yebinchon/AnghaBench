; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_set_jump_target.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_set_jump_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_jump_target(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 226
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = sub nsw i32 %16, %18
  %20 = sub nsw i32 %19, 8
  %21 = icmp slt i32 %20, 1024
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, -4096
  %37 = load i32, i32* %4, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = ptrtoint i32* %38 to i32
  %40 = sub nsw i32 %37, %39
  %41 = sub nsw i32 %40, 8
  %42 = ashr i32 %41, 2
  %43 = or i32 %36, %42
  %44 = or i32 %43, 3840
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %152

46:                                               ; preds = %2
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 114
  br i1 %50, label %51, label %131

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = ptrtoint i32* %53 to i32
  %55 = sub nsw i32 %52, %54
  %56 = sub nsw i32 %55, 8
  %57 = icmp slt i32 %56, 1024
  br i1 %57, label %58, label %81

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, 3
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 3
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, -4096
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = ptrtoint i32* %73 to i32
  %75 = sub nsw i32 %72, %74
  %76 = sub nsw i32 %75, 8
  %77 = ashr i32 %76, 2
  %78 = or i32 %71, %77
  %79 = or i32 %78, 3840
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %130

81:                                               ; preds = %51
  %82 = load i32, i32* %4, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = ptrtoint i32* %83 to i32
  %85 = sub nsw i32 %82, %84
  %86 = sub nsw i32 %85, 8
  %87 = icmp slt i32 %86, 4096
  br i1 %87, label %88, label %119

88:                                               ; preds = %81
  %89 = load i32, i32* %4, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = ptrtoint i32* %90 to i32
  %92 = sub nsw i32 %89, %91
  %93 = sub nsw i32 %92, 8
  %94 = and i32 %93, 15
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %119, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %3, align 4
  %98 = and i32 %97, 3
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, 3
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, -4096
  %110 = load i32, i32* %4, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = ptrtoint i32* %111 to i32
  %113 = sub nsw i32 %110, %112
  %114 = sub nsw i32 %113, 8
  %115 = ashr i32 %114, 4
  %116 = or i32 %109, %115
  %117 = or i32 %116, 3584
  %118 = load i32*, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  br label %129

119:                                              ; preds = %88, %81
  %120 = load i32, i32* %4, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = ptrtoint i32* %121 to i32
  %123 = sub nsw i32 %120, %122
  %124 = sub nsw i32 %123, 8
  %125 = shl i32 %124, 6
  %126 = ashr i32 %125, 8
  %127 = or i32 2046820352, %126
  %128 = load i32*, i32** %6, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %119, %96
  br label %130

130:                                              ; preds = %129, %58
  br label %151

131:                                              ; preds = %46
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 14
  %136 = icmp eq i32 %135, 10
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, -16777216
  %142 = load i32, i32* %4, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = ptrtoint i32* %143 to i32
  %145 = sub nsw i32 %142, %144
  %146 = sub nsw i32 %145, 8
  %147 = shl i32 %146, 6
  %148 = ashr i32 %147, 8
  %149 = or i32 %141, %148
  %150 = load i32*, i32** %6, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %131, %130
  br label %152

152:                                              ; preds = %151, %15
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
