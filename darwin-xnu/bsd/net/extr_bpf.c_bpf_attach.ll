; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_if = type { i64, i32, i32, i32, %struct.bpf_if*, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"bpfattach\00", align 1
@bpf_mlock = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@bpf_iflist = common dso_local global %struct.bpf_if* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"bpfattach - %s with dlt %d is already attached\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i64 0, align 8
@DLT_EN10MB = common dso_local global i32 0, align 4
@SIZEOF_BPF_HDR = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"bpf: %s attached\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_attach(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_if*, align 8
  %13 = alloca %struct.bpf_if*, align 8
  %14 = alloca %struct.bpf_if*, align 8
  %15 = alloca %struct.bpf_if*, align 8
  %16 = alloca %struct.bpf_if*, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.bpf_if* null, %struct.bpf_if** %14, align 8
  store %struct.bpf_if* null, %struct.bpf_if** %15, align 8
  store %struct.bpf_if* null, %struct.bpf_if** %16, align 8
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = load i32, i32* @M_WAIT, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @_MALLOC(i32 40, i32 %18, i32 %21)
  %23 = inttoptr i64 %22 to %struct.bpf_if*
  store %struct.bpf_if* %23, %struct.bpf_if** %13, align 8
  %24 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %25 = icmp eq %struct.bpf_if* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %5
  %29 = load i32, i32* @bpf_mlock, align 4
  %30 = call i32 @lck_mtx_lock(i32 %29)
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %17, align 8
  %32 = load %struct.bpf_if*, %struct.bpf_if** @bpf_iflist, align 8
  store %struct.bpf_if* %32, %struct.bpf_if** %12, align 8
  br label %33

33:                                               ; preds = %64, %28
  %34 = load %struct.bpf_if*, %struct.bpf_if** %12, align 8
  %35 = icmp ne %struct.bpf_if* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load %struct.bpf_if*, %struct.bpf_if** %12, align 8
  %38 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.bpf_if*, %struct.bpf_if** %15, align 8
  %44 = icmp ne %struct.bpf_if* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %68

46:                                               ; preds = %42
  %47 = load %struct.bpf_if*, %struct.bpf_if** %12, align 8
  store %struct.bpf_if* %47, %struct.bpf_if** %14, align 8
  br label %63

48:                                               ; preds = %36
  %49 = load %struct.bpf_if*, %struct.bpf_if** %12, align 8
  %50 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @TRUE, align 8
  store i64 %55, i64* %17, align 8
  br label %68

56:                                               ; preds = %48
  %57 = load %struct.bpf_if*, %struct.bpf_if** %15, align 8
  %58 = icmp eq %struct.bpf_if* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load %struct.bpf_if*, %struct.bpf_if** %12, align 8
  store %struct.bpf_if* %60, %struct.bpf_if** %15, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = load %struct.bpf_if*, %struct.bpf_if** %12, align 8
  store %struct.bpf_if* %62, %struct.bpf_if** %16, align 8
  br label %63

63:                                               ; preds = %61, %46
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.bpf_if*, %struct.bpf_if** %12, align 8
  %66 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %65, i32 0, i32 4
  %67 = load %struct.bpf_if*, %struct.bpf_if** %66, align 8
  store %struct.bpf_if* %67, %struct.bpf_if** %12, align 8
  br label %33

68:                                               ; preds = %54, %45, %33
  %69 = load i64, i64* %17, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32, i32* @bpf_mlock, align 4
  %73 = call i32 @lck_mtx_unlock(i32 %72)
  %74 = load i64, i64* %7, align 8
  %75 = call i8* @if_name(i64 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %76)
  %78 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %79 = load i32, i32* @M_DEVBUF, align 4
  %80 = call i32 @FREE(%struct.bpf_if* %78, i32 %79)
  %81 = load i32, i32* @EEXIST, align 4
  store i32 %81, i32* %6, align 4
  br label %163

82:                                               ; preds = %68
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %85 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %88 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %91 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %94 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.bpf_if*, %struct.bpf_if** %15, align 8
  %96 = icmp eq %struct.bpf_if* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load %struct.bpf_if*, %struct.bpf_if** @bpf_iflist, align 8
  %99 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %100 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %99, i32 0, i32 4
  store %struct.bpf_if* %98, %struct.bpf_if** %100, align 8
  %101 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  store %struct.bpf_if* %101, %struct.bpf_if** @bpf_iflist, align 8
  br label %134

102:                                              ; preds = %82
  %103 = load i64, i64* %7, align 8
  %104 = call i64 @ifnet_type(i64 %103)
  %105 = load i64, i64* @IFT_ETHER, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @DLT_EN10MB, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load %struct.bpf_if*, %struct.bpf_if** %14, align 8
  %113 = icmp ne %struct.bpf_if* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %116 = load %struct.bpf_if*, %struct.bpf_if** %14, align 8
  %117 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %116, i32 0, i32 4
  store %struct.bpf_if* %115, %struct.bpf_if** %117, align 8
  br label %120

118:                                              ; preds = %111
  %119 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  store %struct.bpf_if* %119, %struct.bpf_if** @bpf_iflist, align 8
  br label %120

120:                                              ; preds = %118, %114
  %121 = load %struct.bpf_if*, %struct.bpf_if** %15, align 8
  %122 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %123 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %122, i32 0, i32 4
  store %struct.bpf_if* %121, %struct.bpf_if** %123, align 8
  br label %133

124:                                              ; preds = %107, %102
  %125 = load %struct.bpf_if*, %struct.bpf_if** %16, align 8
  %126 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %125, i32 0, i32 4
  %127 = load %struct.bpf_if*, %struct.bpf_if** %126, align 8
  %128 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %129 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %128, i32 0, i32 4
  store %struct.bpf_if* %127, %struct.bpf_if** %129, align 8
  %130 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %131 = load %struct.bpf_if*, %struct.bpf_if** %16, align 8
  %132 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %131, i32 0, i32 4
  store %struct.bpf_if* %130, %struct.bpf_if** %132, align 8
  br label %133

133:                                              ; preds = %124, %120
  br label %134

134:                                              ; preds = %133, %97
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @SIZEOF_BPF_HDR, align 4
  %137 = add nsw i32 %135, %136
  %138 = call i32 @BPF_WORDALIGN(i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %142 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = add i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = call i32 @BPF_WORDALIGN(i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load %struct.bpf_if*, %struct.bpf_if** %13, align 8
  %151 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  %152 = load i64, i64* %7, align 8
  %153 = call i32 @ifnet_reference(i64 %152)
  %154 = load i32, i32* @bpf_mlock, align 4
  %155 = call i32 @lck_mtx_unlock(i32 %154)
  %156 = load i64, i64* @bootverbose, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %134
  %159 = load i64, i64* %7, align 8
  %160 = call i8* @if_name(i64 %159)
  %161 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %158, %134
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %71
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @if_name(i64) #1

declare dso_local i32 @FREE(%struct.bpf_if*, i32) #1

declare dso_local i64 @ifnet_type(i64) #1

declare dso_local i32 @BPF_WORDALIGN(i32) #1

declare dso_local i32 @ifnet_reference(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
