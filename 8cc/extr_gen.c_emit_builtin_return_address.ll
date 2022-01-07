; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_builtin_return_address.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_builtin_return_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"mov #rbp, #r11\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test #rax, #rax\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"jz %s\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"mov (#r11), #r11\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"sub $1, #rax\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"mov 8(#r11), #rax\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @emit_builtin_return_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_builtin_return_address(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = call i32 @push(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @vec_len(i32 %8)
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vec_head(i32 %15)
  %17 = call i32 @emit_expr(i32 %16)
  %18 = call i8* (...) @make_label()
  store i8* %18, i8** %3, align 8
  %19 = call i8* (...) @make_label()
  store i8* %19, i8** %4, align 8
  %20 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @emit_label(i8* %21)
  %23 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @emit_jmp(i8* %28)
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @emit_label(i8* %30)
  %32 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %33 = call i32 @pop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @push(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vec_len(i32) #1

declare dso_local i32 @emit_expr(i32) #1

declare dso_local i32 @vec_head(i32) #1

declare dso_local i8* @make_label(...) #1

declare dso_local i32 @emit(i8*, ...) #1

declare dso_local i32 @emit_label(i8*) #1

declare dso_local i32 @emit_jmp(i8*) #1

declare dso_local i32 @pop(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
