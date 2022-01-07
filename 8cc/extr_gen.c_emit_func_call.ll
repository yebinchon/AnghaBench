; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_func_call.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_func_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@SAVE = common dso_local global i32 0, align 4
@stackpos = common dso_local global i32 0, align 4
@AST_FUNCPTR_CALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"sub $8, #rsp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"mov $%u, #eax\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"call *#r11\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"call %s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"add $%d, #rsp\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"add $8, #rsp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @emit_func_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_func_call(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load i32, i32* @SAVE, align 4
  %12 = load i32, i32* @stackpos, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AST_FUNCPTR_CALL, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  br label %33

33:                                               ; preds = %29, %21
  %34 = phi %struct.TYPE_7__* [ %28, %21 ], [ %32, %29 ]
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %5, align 8
  %35 = call i32* (...) @make_vector()
  store i32* %35, i32** %6, align 8
  %36 = call i32* (...) @make_vector()
  store i32* %36, i32** %7, align 8
  %37 = call i32* (...) @make_vector()
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @classify_args(i32* %38, i32* %39, i32* %40, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @vec_len(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @vec_len(i32* %47)
  %49 = call i32 @save_arg_regs(i32 %46, i32 %48)
  %50 = load i32, i32* @stackpos, align 4
  %51 = srem i32 %50, 16
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %33
  %55 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @stackpos, align 4
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* @stackpos, align 4
  br label %58

58:                                               ; preds = %54, %33
  %59 = load i32*, i32** %8, align 8
  %60 = call i32* @vec_reverse(i32* %59)
  %61 = call i32 @emit_args(i32* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i32 @emit_expr(%struct.TYPE_9__* %67)
  %69 = call i32 @push(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %64, %58
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @emit_args(i32* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @emit_args(i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @vec_len(i32* %75)
  %77 = call i32 @pop_float_args(i32 %76)
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @vec_len(i32* %78)
  %80 = call i32 @pop_int_args(i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = call i32 @pop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %70
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @vec_len(i32* %91)
  %93 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %104

99:                                               ; preds = %94
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %99, %97
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @maybe_booleanize_retval(i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @stackpos, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* @stackpos, align 4
  br label %117

117:                                              ; preds = %111, %104
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %122 = load i32, i32* @stackpos, align 4
  %123 = sub nsw i32 %122, 8
  store i32 %123, i32* @stackpos, align 4
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @vec_len(i32* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @vec_len(i32* %127)
  %129 = call i32 @restore_arg_regs(i32 %126, i32 %128)
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @stackpos, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  ret void
}

declare dso_local i32* @make_vector(...) #1

declare dso_local i32 @classify_args(i32*, i32*, i32*, i32) #1

declare dso_local i32 @save_arg_regs(i32, i32) #1

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i32 @emit(i8*, ...) #1

declare dso_local i32 @emit_args(i32*) #1

declare dso_local i32* @vec_reverse(i32*) #1

declare dso_local i32 @emit_expr(%struct.TYPE_9__*) #1

declare dso_local i32 @push(i8*) #1

declare dso_local i32 @pop_float_args(i32) #1

declare dso_local i32 @pop_int_args(i32) #1

declare dso_local i32 @pop(i8*) #1

declare dso_local i32 @maybe_booleanize_retval(i32) #1

declare dso_local i32 @restore_arg_regs(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
