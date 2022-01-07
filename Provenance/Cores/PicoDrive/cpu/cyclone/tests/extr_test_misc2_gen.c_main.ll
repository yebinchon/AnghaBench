; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/tests/extr_test_misc2_gen.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/tests/extr_test_misc2_gen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"test_misc2.bin\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@f = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 @time(i32 0)
  %6 = call i32 @srand(i32 %5)
  %7 = call i32 @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %7, i32* @f, align 4
  %8 = load i32, i32* @f, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %132

11:                                               ; preds = %0
  %12 = call i32 @write32(i32 16744448)
  %13 = call i32 @write32(i32 768)
  store i32 62, i32* %2, align 4
  br label %14

14:                                               ; preds = %22, %11
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 512, %19
  %21 = call i32 @write32(i32 %20)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %2, align 4
  br label %14

25:                                               ; preds = %14
  store i32 64, i32* %2, align 4
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = call i32 @write32(i32 0)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %2, align 4
  br label %26

34:                                               ; preds = %26
  store i32 64, i32* %2, align 4
  br label %35

35:                                               ; preds = %40, %34
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = call i32 @write32(i32 1316179571)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %2, align 4
  br label %35

43:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %124, %43
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 65536
  br i1 %46, label %47, label %127

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 61440
  %50 = icmp eq i32 %49, 24576
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @write_op(i32 %56, i32 6, i32 0, i32 0)
  br label %58

58:                                               ; preds = %55, %51
  br label %123

59:                                               ; preds = %47
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 61688
  %62 = icmp eq i32 %61, 20680
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @write_op(i32 %64, i32 6, i32 0, i32 0)
  br label %122

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, 65408
  %69 = icmp eq i32 %68, 20096
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = mul nsw i32 %71, 8
  %73 = add nsw i32 768, %72
  %74 = add nsw i32 %73, 8
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 63
  %77 = icmp eq i32 %76, 57
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %4, align 4
  %81 = ashr i32 %80, 16
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, 65535
  %84 = call i32 @write_op(i32 %79, i32 %81, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %78, %70
  br label %121

86:                                               ; preds = %66
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %87, 61440
  %89 = icmp eq i32 %88, 40960
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, 61440
  %93 = icmp eq i32 %92, 61440
  br i1 %93, label %94, label %102

94:                                               ; preds = %90, %86
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 40960
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 61440
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %124

101:                                              ; preds = %97, %94
  br label %120

102:                                              ; preds = %90
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, 65528
  %105 = icmp eq i32 %104, 20080
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32, i32* %3, align 4
  %108 = icmp ne i32 %107, 20081
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %110, 20086
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %119

113:                                              ; preds = %109, %106, %102
  %114 = load i32, i32* %3, align 4
  %115 = call i32 (...) @safe_rand()
  %116 = call i32 (...) @safe_rand()
  %117 = call i32 (...) @safe_rand()
  %118 = call i32 @write_op(i32 %114, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %112
  br label %120

120:                                              ; preds = %119, %101
  br label %121

121:                                              ; preds = %120, %85
  br label %122

122:                                              ; preds = %121, %63
  br label %123

123:                                              ; preds = %122, %58
  br label %124

124:                                              ; preds = %123, %100
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %44

127:                                              ; preds = %44
  %128 = call i32 @write_op(i32 20216, i32 768, i32 20216, i32 768)
  %129 = call i32 @write_op(i32 20216, i32 768, i32 20216, i32 768)
  %130 = load i32, i32* @f, align 4
  %131 = call i32 @fclose(i32 %130)
  store i32 0, i32* %1, align 4
  br label %132

132:                                              ; preds = %127, %10
  %133 = load i32, i32* %1, align 4
  ret i32 %133
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @write32(i32) #1

declare dso_local i32 @write_op(i32, i32, i32, i32) #1

declare dso_local i32 @safe_rand(...) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
