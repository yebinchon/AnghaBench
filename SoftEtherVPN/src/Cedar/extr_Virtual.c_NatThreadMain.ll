; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatThreadMain.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatThreadMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__**, i32, i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@NAT_TMPBUF_SIZE = common dso_local global i32 0, align 4
@SELECT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NatThreadMain(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %12 = icmp eq %struct.TYPE_18__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %159

14:                                               ; preds = %1
  %15 = load i32, i32* @NAT_TMPBUF_SIZE, align 4
  %16 = call %struct.TYPE_19__** @Malloc(i32 %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  store %struct.TYPE_19__** %16, %struct.TYPE_19__*** %18, align 8
  br label %19

19:                                               ; preds = %14, %153
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SELECT_TIME, align 4
  %24 = call i32 @WaitSockEvent(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %26 = call i32 @LockVirtual(%struct.TYPE_18__* %25)
  %27 = call i32 (...) @Tick64()
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %76, %69, %62, %55, %19
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @LIST_NUM(i32 %35)
  store i64 %36, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %79, %32
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call %struct.TYPE_19__* @LIST_DATA(i32 %44, i64 %45)
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %6, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %78 [
    i32 129, label %50
    i32 128, label %57
    i32 130, label %64
    i32 131, label %71
  ]

50:                                               ; preds = %41
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = call i32 @NatTransactTcp(%struct.TYPE_18__* %51, %struct.TYPE_19__* %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %32

56:                                               ; preds = %50
  br label %78

57:                                               ; preds = %41
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = call i32 @NatTransactUdp(%struct.TYPE_18__* %58, %struct.TYPE_19__* %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %32

63:                                               ; preds = %57
  br label %78

64:                                               ; preds = %41
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = call i32 @NatTransactIcmp(%struct.TYPE_18__* %65, %struct.TYPE_19__* %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %32

70:                                               ; preds = %64
  br label %78

71:                                               ; preds = %41
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = call i32 @NatTransactDns(%struct.TYPE_18__* %72, %struct.TYPE_19__* %73)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %32

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %41, %77, %70, %63, %56
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %4, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %4, align 8
  br label %37

82:                                               ; preds = %37
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @Cancel(i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %100 = call i32 @UnlockVirtual(%struct.TYPE_18__* %99)
  %101 = load i32, i32* %3, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %153

103:                                              ; preds = %98
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %105 = call i32 @LockVirtual(%struct.TYPE_18__* %104)
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @LIST_NUM(i32 %108)
  store i64 %109, i64* %7, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.TYPE_19__** @ToArray(i32 %112)
  store %struct.TYPE_19__** %113, %struct.TYPE_19__*** %8, align 8
  store i64 0, i64* %9, align 8
  br label %114

114:                                              ; preds = %145, %103
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %7, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %114
  %119 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %119, i64 %120
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %10, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %144 [
    i32 129, label %128
    i32 128, label %132
    i32 130, label %136
    i32 131, label %140
  ]

128:                                              ; preds = %118
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %131 = call i32 @NatTransactTcp(%struct.TYPE_18__* %129, %struct.TYPE_19__* %130)
  br label %144

132:                                              ; preds = %118
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %135 = call i32 @NatTransactUdp(%struct.TYPE_18__* %133, %struct.TYPE_19__* %134)
  br label %144

136:                                              ; preds = %118
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %139 = call i32 @NatTransactIcmp(%struct.TYPE_18__* %137, %struct.TYPE_19__* %138)
  br label %144

140:                                              ; preds = %118
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %143 = call i32 @NatTransactDns(%struct.TYPE_18__* %141, %struct.TYPE_19__* %142)
  br label %144

144:                                              ; preds = %118, %140, %136, %132, %128
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %9, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %9, align 8
  br label %114

148:                                              ; preds = %114
  %149 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %150 = call i32 @Free(%struct.TYPE_19__** %149)
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %152 = call i32 @UnlockVirtual(%struct.TYPE_18__* %151)
  br label %154

153:                                              ; preds = %98
  br label %19

154:                                              ; preds = %148
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %156, align 8
  %158 = call i32 @Free(%struct.TYPE_19__** %157)
  br label %159

159:                                              ; preds = %154, %13
  ret void
}

declare dso_local %struct.TYPE_19__** @Malloc(i32) #1

declare dso_local i32 @WaitSockEvent(i32, i32) #1

declare dso_local i32 @LockVirtual(%struct.TYPE_18__*) #1

declare dso_local i32 @Tick64(...) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_19__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @NatTransactTcp(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @NatTransactUdp(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @NatTransactIcmp(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @NatTransactDns(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @Cancel(i32) #1

declare dso_local i32 @UnlockVirtual(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__** @ToArray(i32) #1

declare dso_local i32 @Free(%struct.TYPE_19__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
