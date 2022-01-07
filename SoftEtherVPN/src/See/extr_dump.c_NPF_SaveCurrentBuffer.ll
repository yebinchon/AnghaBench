; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_dump.c_NPF_SaveCurrentBuffer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_dump.c_NPF_SaveCurrentBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, %struct.TYPE_7__, i32, i8*, i32 }
%struct.TYPE_7__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@CurrBuff = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@IoStatus = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@SizeToDump = common dso_local global i64 0, align 8
@TLastByte = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@Thead = common dso_local global i64 0, align 8
@Ttail = common dso_local global i64 0, align 8
@lMdl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NPF_SaveCurrentBuffer(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
