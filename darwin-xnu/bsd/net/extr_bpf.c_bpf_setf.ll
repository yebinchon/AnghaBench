; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_setf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_setf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i64, i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@bpf_mlock = common dso_local global i32 0, align 4
@PRINET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bpf_reading\00", align 1
@BPF_CLOSING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@BPF_MAXINSNS = common dso_local global i64 0, align 8
@M_WAIT = common dso_local global i32 0, align 4
@BIOCSETF32 = common dso_local global i64 0, align 8
@BIOCSETF64 = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_d*, i64, i64, i64)* @bpf_setf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_setf(%struct.bpf_d* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_d*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bpf_insn*, align 8
  %11 = alloca %struct.bpf_insn*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  br label %14

14:                                               ; preds = %19, %4
  %15 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %16 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %21 = ptrtoint %struct.bpf_d* %20 to i32
  %22 = load i32, i32* @bpf_mlock, align 4
  %23 = load i32, i32* @PRINET, align 4
  %24 = call i32 @msleep(i32 %21, i32 %22, i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %14

25:                                               ; preds = %14
  %26 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %27 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BPF_CLOSING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %5, align 4
  br label %115

34:                                               ; preds = %25
  %35 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %36 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %35, i32 0, i32 2
  %37 = load %struct.bpf_insn*, %struct.bpf_insn** %36, align 8
  store %struct.bpf_insn* %37, %struct.bpf_insn** %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @USER_ADDR_NULL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %115

46:                                               ; preds = %41
  %47 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %48 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %47, i32 0, i32 2
  store %struct.bpf_insn* null, %struct.bpf_insn** %48, align 8
  %49 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %50 = call i32 @reset_d(%struct.bpf_d* %49)
  %51 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %52 = icmp ne %struct.bpf_insn* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %55 = ptrtoint %struct.bpf_insn* %54 to i32
  %56 = load i32, i32* @M_DEVBUF, align 4
  %57 = call i32 @FREE(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %46
  store i32 0, i32* %5, align 4
  br label %115

59:                                               ; preds = %34
  %60 = load i64, i64* %7, align 8
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @BPF_MAXINSNS, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %5, align 4
  br label %115

66:                                               ; preds = %59
  %67 = load i64, i64* %12, align 8
  %68 = mul i64 %67, 4
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = load i32, i32* @M_WAIT, align 4
  %72 = call i64 @_MALLOC(i64 %69, i32 %70, i32 %71)
  %73 = inttoptr i64 %72 to %struct.bpf_insn*
  store %struct.bpf_insn* %73, %struct.bpf_insn** %10, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %76 = ptrtoint %struct.bpf_insn* %75 to i32
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @copyin(i64 %74, i32 %76, i64 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %66
  %81 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i64 @bpf_validate(%struct.bpf_insn* %81, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %80
  %87 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %88 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %89 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %88, i32 0, i32 2
  store %struct.bpf_insn* %87, %struct.bpf_insn** %89, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @BIOCSETF32, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %86
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @BIOCSETF64, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %86
  %98 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %99 = call i32 @reset_d(%struct.bpf_d* %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %102 = icmp ne %struct.bpf_insn* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %105 = ptrtoint %struct.bpf_insn* %104 to i32
  %106 = load i32, i32* @M_DEVBUF, align 4
  %107 = call i32 @FREE(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %100
  store i32 0, i32* %5, align 4
  br label %115

109:                                              ; preds = %80, %66
  %110 = load %struct.bpf_insn*, %struct.bpf_insn** %10, align 8
  %111 = ptrtoint %struct.bpf_insn* %110 to i32
  %112 = load i32, i32* @M_DEVBUF, align 4
  %113 = call i32 @FREE(i32 %111, i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %109, %108, %64, %58, %44, %32
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @msleep(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @reset_d(%struct.bpf_d*) #1

declare dso_local i32 @FREE(i32, i32) #1

declare dso_local i64 @_MALLOC(i64, i32, i32) #1

declare dso_local i64 @copyin(i64, i32, i64) #1

declare dso_local i64 @bpf_validate(%struct.bpf_insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
