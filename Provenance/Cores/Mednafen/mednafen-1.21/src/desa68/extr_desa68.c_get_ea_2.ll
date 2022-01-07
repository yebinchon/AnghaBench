; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_get_ea_2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_get_ea_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DESA68_SYMBOL_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"(PC)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(PC,\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @get_ea_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ea_2(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 138
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %3
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %149 [
    i32 135, label %16
    i32 137, label %20
    i32 129, label %24
    i32 128, label %29
    i32 136, label %35
    i32 133, label %41
    i32 132, label %49
    i32 138, label %71
    i32 139, label %76
    i32 131, label %82
    i32 130, label %98
    i32 134, label %129
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 17456, %17
  %19 = call i32 @desa_ascii(i32 %18)
  br label %154

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 16688, %21
  %23 = call i32 @desa_ascii(i32 %22)
  br label %154

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 8
  %27 = add nsw i32 675360809, %26
  %28 = call i32 @desa_ascii(i32 %27)
  br label %154

29:                                               ; preds = %14
  %30 = call i32 @desa_char(i8 signext 45)
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 8
  %33 = add nsw i32 675360809, %32
  %34 = call i32 @desa_ascii(i32 %33)
  br label %154

35:                                               ; preds = %14
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 8
  %38 = add nsw i32 675360809, %37
  %39 = call i32 @desa_ascii(i32 %38)
  %40 = call i32 @desa_char(i8 signext 43)
  br label %154

41:                                               ; preds = %14
  %42 = call i32 (...) @read_pc()
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 8
  %44 = call i32 @desa_signifiant(i8* %43)
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 8
  %47 = add nsw i32 675360809, %46
  %48 = call i32 @desa_ascii(i32 %47)
  br label %154

49:                                               ; preds = %14
  %50 = call i32 (...) @indAnXi()
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = ptrtoint i8* %54 to i32
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @desa_signifiant(i8* %59)
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 %61, 8
  %63 = add nsw i32 675360812, %62
  %64 = call i32 @desa_ascii(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, -65281
  %67 = add i32 %66, 11776
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @desa_ascii(i32 %68)
  %70 = call i32 @desa_char(i8 signext 41)
  br label %154

71:                                               ; preds = %14
  %72 = call i32 (...) @adrW()
  store i32 %72, i32* %7, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @desa_usignifiant(i32 %73)
  %75 = call i32 @desa_ascii(i32 11863)
  br label %154

76:                                               ; preds = %14
  %77 = call i32 (...) @adrL()
  store i32 %77, i32* %7, align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @update_ea(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @desa_absL(i32 %80)
  br label %154

82:                                               ; preds = %14
  %83 = call i32 (...) @relPC()
  store i32 %83, i32* %7, align 4
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @update_ea(i32 %84)
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  %87 = load i32, i32* @DESA68_SYMBOL_FLAG, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @desa_label(i32 %91)
  br label %96

93:                                               ; preds = %82
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @desa_usignifiant(i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = call i32 @desa_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %154

98:                                               ; preds = %14
  %99 = call i32 (...) @indAnXi()
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 8
  %101 = sub nsw i32 %100, 2
  %102 = load i32, i32* %7, align 4
  %103 = ashr i32 %102, 8
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = sext i32 %101 to i64
  %107 = getelementptr i8, i8* %105, i64 %106
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %110 = call i32 @update_ea(i32 %109)
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 4
  %112 = load i32, i32* @DESA68_SYMBOL_FLAG, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %98
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %117 = call i32 @desa_label(i32 %116)
  br label %121

118:                                              ; preds = %98
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 8
  %120 = call i32 @desa_usignifiant(i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = call i32 @desa_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* %7, align 4
  %124 = and i32 %123, -65281
  %125 = add i32 %124, 11776
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @desa_ascii(i32 %126)
  %128 = call i32 @desa_char(i8 signext 41)
  br label %154

129:                                              ; preds = %14
  %130 = load i32, i32* %6, align 4
  switch i32 %130, label %146 [
    i32 1, label %131
    i32 66, label %131
    i32 2, label %138
    i32 87, label %138
    i32 4, label %142
    i32 76, label %142
  ]

131:                                              ; preds = %129, %129
  %132 = call i32 (...) @immB()
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @desa_immL(i32 %136)
  br label %148

138:                                              ; preds = %129, %129
  %139 = call i32 (...) @immW()
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @desa_immL(i32 %140)
  br label %148

142:                                              ; preds = %129, %129
  %143 = call i32 (...) @immL()
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @desa_immL(i32 %144)
  br label %154

146:                                              ; preds = %129
  %147 = call i32 @desa_str(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %138, %131
  br label %154

149:                                              ; preds = %14
  %150 = call i32 @desa_char(i8 signext 63)
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @desa_usignifiant(i32 %151)
  %153 = call i32 @desa_char(i8 signext 63)
  br label %154

154:                                              ; preds = %142, %149, %148, %121, %96, %76, %71, %49, %41, %35, %29, %24, %20, %16
  ret void
}

declare dso_local i32 @desa_ascii(i32) #1

declare dso_local i32 @desa_char(i8 signext) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @desa_signifiant(i8*) #1

declare dso_local i32 @indAnXi(...) #1

declare dso_local i32 @adrW(...) #1

declare dso_local i32 @desa_usignifiant(i32) #1

declare dso_local i32 @adrL(...) #1

declare dso_local i32 @update_ea(i32) #1

declare dso_local i32 @desa_absL(i32) #1

declare dso_local i32 @relPC(...) #1

declare dso_local i32 @desa_label(i32) #1

declare dso_local i32 @desa_str(i8*) #1

declare dso_local i32 @immB(...) #1

declare dso_local i32 @desa_immL(i32) #1

declare dso_local i32 @immW(...) #1

declare dso_local i32 @immL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
