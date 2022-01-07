; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_jitter.c_BPF_jitter.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_jitter.c_BPF_jitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }
%struct.JIT_BPF_Filter = type { %struct.JIT_BPF_Filter*, i32* }

@BPF_MEMWORDS = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.JIT_BPF_Filter* @BPF_jitter(%struct.bpf_insn* %0, %struct.JIT_BPF_Filter* %1, i32* %2) #0 {
  %4 = alloca %struct.JIT_BPF_Filter*, align 8
  %5 = alloca %struct.JIT_BPF_Filter, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca %struct.JIT_BPF_Filter*, align 8
  %8 = bitcast %struct.JIT_BPF_Filter* %5 to { %struct.JIT_BPF_Filter*, i32* }*
  %9 = getelementptr inbounds { %struct.JIT_BPF_Filter*, i32* }, { %struct.JIT_BPF_Filter*, i32* }* %8, i32 0, i32 0
  store %struct.JIT_BPF_Filter* %1, %struct.JIT_BPF_Filter** %9, align 8
  %10 = getelementptr inbounds { %struct.JIT_BPF_Filter*, i32* }, { %struct.JIT_BPF_Filter*, i32* }* %8, i32 0, i32 1
  store i32* %2, i32** %10, align 8
  store %struct.bpf_insn* %0, %struct.bpf_insn** %6, align 8
  %11 = call i64 @malloc(i32 16)
  %12 = inttoptr i64 %11 to %struct.JIT_BPF_Filter*
  store %struct.JIT_BPF_Filter* %12, %struct.JIT_BPF_Filter** %7, align 8
  %13 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %7, align 8
  %14 = icmp eq %struct.JIT_BPF_Filter* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.JIT_BPF_Filter* null, %struct.JIT_BPF_Filter** %4, align 8
  br label %55

16:                                               ; preds = %3
  %17 = load i32, i32* @BPF_MEMWORDS, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 16
  %20 = trunc i64 %19 to i32
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to %struct.JIT_BPF_Filter*
  %23 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %7, align 8
  %24 = getelementptr inbounds %struct.JIT_BPF_Filter, %struct.JIT_BPF_Filter* %23, i32 0, i32 0
  store %struct.JIT_BPF_Filter* %22, %struct.JIT_BPF_Filter** %24, align 8
  %25 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %7, align 8
  %26 = getelementptr inbounds %struct.JIT_BPF_Filter, %struct.JIT_BPF_Filter* %25, i32 0, i32 0
  %27 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %26, align 8
  %28 = icmp eq %struct.JIT_BPF_Filter* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %7, align 8
  %31 = call i32 @free(%struct.JIT_BPF_Filter* %30)
  store %struct.JIT_BPF_Filter* null, %struct.JIT_BPF_Filter** %4, align 8
  br label %55

32:                                               ; preds = %16
  %33 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %34 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %7, align 8
  %35 = getelementptr inbounds %struct.JIT_BPF_Filter, %struct.JIT_BPF_Filter* %34, i32 0, i32 0
  %36 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %35, align 8
  %37 = bitcast %struct.JIT_BPF_Filter* %5 to { %struct.JIT_BPF_Filter*, i32* }*
  %38 = getelementptr inbounds { %struct.JIT_BPF_Filter*, i32* }, { %struct.JIT_BPF_Filter*, i32* }* %37, i32 0, i32 0
  %39 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %38, align 8
  %40 = getelementptr inbounds { %struct.JIT_BPF_Filter*, i32* }, { %struct.JIT_BPF_Filter*, i32* }* %37, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32* @BPFtoX86(%struct.bpf_insn* %33, %struct.JIT_BPF_Filter* %39, i32* %41, %struct.JIT_BPF_Filter* %36)
  %43 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %7, align 8
  %44 = getelementptr inbounds %struct.JIT_BPF_Filter, %struct.JIT_BPF_Filter* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = icmp eq i32* %42, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %7, align 8
  %48 = getelementptr inbounds %struct.JIT_BPF_Filter, %struct.JIT_BPF_Filter* %47, i32 0, i32 0
  %49 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %48, align 8
  %50 = call i32 @free(%struct.JIT_BPF_Filter* %49)
  %51 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %7, align 8
  %52 = call i32 @free(%struct.JIT_BPF_Filter* %51)
  store %struct.JIT_BPF_Filter* null, %struct.JIT_BPF_Filter** %4, align 8
  br label %55

53:                                               ; preds = %32
  %54 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %7, align 8
  store %struct.JIT_BPF_Filter* %54, %struct.JIT_BPF_Filter** %4, align 8
  br label %55

55:                                               ; preds = %53, %46, %29, %15
  %56 = load %struct.JIT_BPF_Filter*, %struct.JIT_BPF_Filter** %4, align 8
  ret %struct.JIT_BPF_Filter* %56
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.JIT_BPF_Filter*) #1

declare dso_local i32* @BPFtoX86(%struct.bpf_insn*, %struct.JIT_BPF_Filter*, i32*, %struct.JIT_BPF_Filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
