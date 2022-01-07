; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i32, i32, %struct.TYPE_31__* }

@SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*)* @emit_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_expr(%struct.TYPE_31__* %0) #0 {
  %2 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %2, align 8
  %3 = load i32, i32* @SAVE, align 4
  %4 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %5 = call i32 @maybe_print_source_loc(%struct.TYPE_31__* %4)
  %6 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %120 [
    i32 140, label %9
    i32 139, label %12
    i32 143, label %15
    i32 146, label %18
    i32 147, label %21
    i32 145, label %27
    i32 149, label %30
    i32 150, label %33
    i32 153, label %36
    i32 148, label %41
    i32 142, label %44
    i32 136, label %44
    i32 144, label %47
    i32 141, label %50
    i32 138, label %61
    i32 152, label %64
    i32 137, label %67
    i32 128, label %75
    i32 129, label %78
    i32 130, label %81
    i32 131, label %84
    i32 33, label %87
    i32 38, label %90
    i32 124, label %93
    i32 126, label %96
    i32 133, label %99
    i32 132, label %102
    i32 135, label %105
    i32 44, label %108
    i32 61, label %111
    i32 134, label %114
    i32 151, label %117
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %11 = call i32 @emit_literal(%struct.TYPE_31__* %10)
  br label %123

12:                                               ; preds = %1
  %13 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %14 = call i32 @emit_lvar(%struct.TYPE_31__* %13)
  br label %123

15:                                               ; preds = %1
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %17 = call i32 @emit_gvar(%struct.TYPE_31__* %16)
  br label %123

18:                                               ; preds = %1
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %20 = call i32 @emit_addr(%struct.TYPE_31__* %19)
  br label %123

21:                                               ; preds = %1
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %23 = call i32 @maybe_emit_builtin(%struct.TYPE_31__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %123

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %1, %26
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %29 = call i32 @emit_func_call(%struct.TYPE_31__* %28)
  br label %123

30:                                               ; preds = %1
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %32 = call i32 @emit_decl(%struct.TYPE_31__* %31)
  br label %123

33:                                               ; preds = %1
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %35 = call i32 @emit_conv(%struct.TYPE_31__* %34)
  br label %123

36:                                               ; preds = %1
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %38, align 8
  %40 = call i32 @emit_addr(%struct.TYPE_31__* %39)
  br label %123

41:                                               ; preds = %1
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %43 = call i32 @emit_deref(%struct.TYPE_31__* %42)
  br label %123

44:                                               ; preds = %1, %1
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %46 = call i32 @emit_ternary(%struct.TYPE_31__* %45)
  br label %123

47:                                               ; preds = %1
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %49 = call i32 @emit_goto(%struct.TYPE_31__* %48)
  br label %123

50:                                               ; preds = %1
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @emit_label(i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %123

61:                                               ; preds = %1
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %63 = call i32 @emit_return(%struct.TYPE_31__* %62)
  br label %123

64:                                               ; preds = %1
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %66 = call i32 @emit_compound_stmt(%struct.TYPE_31__* %65)
  br label %123

67:                                               ; preds = %1
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @emit_load_struct_ref(i32 %70, i32 %73, i32 0)
  br label %123

75:                                               ; preds = %1
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %77 = call i32 @emit_pre_inc_dec(%struct.TYPE_31__* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %123

78:                                               ; preds = %1
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %80 = call i32 @emit_pre_inc_dec(%struct.TYPE_31__* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %123

81:                                               ; preds = %1
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %83 = call i32 @emit_post_inc_dec(%struct.TYPE_31__* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %123

84:                                               ; preds = %1
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %86 = call i32 @emit_post_inc_dec(%struct.TYPE_31__* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %123

87:                                               ; preds = %1
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %89 = call i32 @emit_lognot(%struct.TYPE_31__* %88)
  br label %123

90:                                               ; preds = %1
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %92 = call i32 @emit_bitand(%struct.TYPE_31__* %91)
  br label %123

93:                                               ; preds = %1
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %95 = call i32 @emit_bitor(%struct.TYPE_31__* %94)
  br label %123

96:                                               ; preds = %1
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %98 = call i32 @emit_bitnot(%struct.TYPE_31__* %97)
  br label %123

99:                                               ; preds = %1
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %101 = call i32 @emit_logand(%struct.TYPE_31__* %100)
  br label %123

102:                                              ; preds = %1
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %104 = call i32 @emit_logor(%struct.TYPE_31__* %103)
  br label %123

105:                                              ; preds = %1
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %107 = call i32 @emit_cast(%struct.TYPE_31__* %106)
  br label %123

108:                                              ; preds = %1
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %110 = call i32 @emit_comma(%struct.TYPE_31__* %109)
  br label %123

111:                                              ; preds = %1
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %113 = call i32 @emit_assign(%struct.TYPE_31__* %112)
  br label %123

114:                                              ; preds = %1
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %116 = call i32 @emit_label_addr(%struct.TYPE_31__* %115)
  br label %123

117:                                              ; preds = %1
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %119 = call i32 @emit_computed_goto(%struct.TYPE_31__* %118)
  br label %123

120:                                              ; preds = %1
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %122 = call i32 @emit_binop(%struct.TYPE_31__* %121)
  br label %123

123:                                              ; preds = %9, %12, %15, %18, %25, %27, %30, %33, %36, %41, %44, %47, %60, %61, %64, %67, %75, %78, %81, %84, %87, %90, %93, %96, %99, %102, %105, %108, %111, %114, %117, %120
  ret void
}

declare dso_local i32 @maybe_print_source_loc(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_literal(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_lvar(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_gvar(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_addr(%struct.TYPE_31__*) #1

declare dso_local i32 @maybe_emit_builtin(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_func_call(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_decl(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_conv(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_deref(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_ternary(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_goto(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @emit_return(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_compound_stmt(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_load_struct_ref(i32, i32, i32) #1

declare dso_local i32 @emit_pre_inc_dec(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @emit_post_inc_dec(%struct.TYPE_31__*, i8*) #1

declare dso_local i32 @emit_lognot(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_bitand(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_bitor(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_bitnot(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_logand(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_logor(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_cast(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_comma(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_assign(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_label_addr(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_computed_goto(%struct.TYPE_31__*) #1

declare dso_local i32 @emit_binop(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
