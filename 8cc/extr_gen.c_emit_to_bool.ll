; ModuleID = '/home/carl/AnghaBench/8cc/extr_gen.c_emit_to_bool.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_gen.c_emit_to_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"xorpd #xmm1, #xmm1\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s #xmm1, #xmm0\00", align 1
@KIND_FLOAT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"ucomiss\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ucomisd\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"setne #al\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"cmp $0, #rax\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"movzb #al, #eax\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @emit_to_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_to_bool(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @SAVE, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i64 @is_flotype(%struct.TYPE_4__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = call i32 @push_xmm(i32 1)
  %9 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @KIND_FLOAT, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %17 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @pop_xmm(i32 1)
  br label %23

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %7
  %24 = call i32 (i8*, ...) @emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i64 @is_flotype(%struct.TYPE_4__*) #1

declare dso_local i32 @push_xmm(i32) #1

declare dso_local i32 @emit(i8*, ...) #1

declare dso_local i32 @pop_xmm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
