; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_literal.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, i8*, %struct.TYPE_4__*, i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mov $%u, #rax\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"mov $%lu, #rax\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".long %d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"movss %s(#rip), #xmm0\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c".quad %lu\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"movsd %s(#rip), #xmm0\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c".string \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"lea %s(#rip), #rax\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @emit_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_literal(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @SAVE, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %107 [
    i32 136, label %10
    i32 135, label %10
    i32 128, label %10
    i32 132, label %15
    i32 129, label %20
    i32 130, label %20
    i32 133, label %25
    i32 134, label %51
    i32 131, label %51
    i32 137, label %76
  ]

10:                                               ; preds = %1, %1, %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %109

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %109

20:                                               ; preds = %1, %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %109

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = call i8* (...) @make_label()
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  store float %36, float* %3, align 4
  %37 = call i32 @emit_noindent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @emit_label(i8* %40)
  %42 = bitcast float* %3 to i8**
  %43 = load i8*, i8** %42, align 4
  %44 = call i32 @emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = call i32 @emit_noindent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %30, %25
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  br label %109

51:                                               ; preds = %1, %1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = call i8* (...) @make_label()
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = call i32 @emit_noindent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @emit_label(i8* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = bitcast float* %66 to i8**
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %68)
  %70 = call i32 @emit_noindent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %56, %51
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %74)
  br label %109

76:                                               ; preds = %1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %102, label %81

81:                                               ; preds = %76
  %82 = call i8* (...) @make_label()
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = call i32 @emit_noindent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @emit_label(i8* %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i8* @quote_cstring_len(i32 %92, i32 %98)
  %100 = call i32 @emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %99)
  %101 = call i32 @emit_noindent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %81, %76
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %105)
  br label %109

107:                                              ; preds = %1
  %108 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %102, %71, %46, %20, %15, %10
  ret void
}

declare dso_local i32 @emit(i8*, i8*) #1

declare dso_local i8* @make_label(...) #1

declare dso_local i32 @emit_noindent(i8*) #1

declare dso_local i32 @emit_label(i8*) #1

declare dso_local i8* @quote_cstring_len(i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
