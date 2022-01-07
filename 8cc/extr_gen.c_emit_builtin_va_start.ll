; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_builtin_va_start.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_builtin_va_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rcx\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"movl $%d, (#rax)\00", align 1
@numgp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"movl $%d, 4(#rax)\00", align 1
@numfp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"lea %d(#rbp), #rcx\00", align 1
@REGAREA_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"mov #rcx, 16(#rax)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @emit_builtin_va_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_builtin_va_start(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @SAVE, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @vec_len(i32 %6)
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vec_head(i32 %13)
  %15 = call i32 @emit_expr(i32 %14)
  %16 = call i32 @push(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @numgp, align 4
  %18 = mul nsw i32 %17, 8
  %19 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @numfp, align 4
  %21 = mul nsw i32 %20, 16
  %22 = add nsw i32 48, %21
  %23 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @REGAREA_SIZE, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @pop(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vec_len(i32) #1

declare dso_local i32 @emit_expr(i32) #1

declare dso_local i32 @vec_head(i32) #1

declare dso_local i32 @push(i8*) #1

declare dso_local i32 @emit(i8*, ...) #1

declare dso_local i32 @pop(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
