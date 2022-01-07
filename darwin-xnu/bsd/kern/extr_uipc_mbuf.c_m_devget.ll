; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_devget.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_devget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@M_DONTWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@MINCLSIZE = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4
@MC_CL = common dso_local global i32 0, align 4
@max_linkhdr = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_devget(i8* %0, i32 %1, i32 %2, %struct.ifnet* %3, void (i8*, i8*, i64)* %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca void (i8*, i8*, i64)*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ifnet* %3, %struct.ifnet** %10, align 8
  store void (i8*, i8*, i64)* %4, void (i8*, i8*, i64)** %11, align 8
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  store %struct.mbuf** %13, %struct.mbuf*** %14, align 8
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %17, align 8
  %21 = load i8*, i8** %17, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %18, align 8
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 8
  %31 = load i8*, i8** %17, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %32, i8** %17, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %27, %5
  %38 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %39 = load i32, i32* @M_DONTWAIT, align 4
  %40 = load i32, i32* @MT_DATA, align 4
  %41 = call i32 @_MGETHDR(%struct.mbuf* %38, i32 %39, i32 %40)
  %42 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %43 = icmp eq %struct.mbuf* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %188

45:                                               ; preds = %37
  %46 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store %struct.ifnet* %46, %struct.ifnet** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @MHLEN, align 4
  %55 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %185, %45
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %186

60:                                               ; preds = %57
  %61 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %62 = icmp ne %struct.mbuf* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %65 = load i32, i32* @M_DONTWAIT, align 4
  %66 = load i32, i32* @MT_DATA, align 4
  %67 = call i32 @_MGET(%struct.mbuf* %64, i32 %65, i32 %66)
  %68 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %69 = icmp eq %struct.mbuf* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %72 = call i32 @m_freem(%struct.mbuf* %71)
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %188

73:                                               ; preds = %63
  %74 = load i32, i32* @MLEN, align 4
  %75 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %60
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %18, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @MIN(i32 %78, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @MINCLSIZE, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %77
  %90 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %91 = load i32, i32* @M_DONTWAIT, align 4
  %92 = call i32 @MCLGET(%struct.mbuf* %90, i32 %91)
  %93 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @M_EXT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @MC_CL, align 4
  %102 = call i32 @m_maxsize(i32 %101)
  %103 = call i32 @MIN(i32 %100, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %105 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %115

106:                                              ; preds = %89
  %107 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %108 = icmp ne %struct.mbuf* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %111 = call i32 @m_freem(%struct.mbuf* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %114 = call i32 @m_freem(%struct.mbuf* %113)
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %188

115:                                              ; preds = %99
  br label %148

116:                                              ; preds = %77
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %119 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %116
  %123 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %124 = icmp eq %struct.mbuf* %123, null
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* @max_linkhdr, align 4
  %128 = add nsw i32 %126, %127
  %129 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %130 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sle i32 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load i32, i32* @max_linkhdr, align 4
  %135 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %136 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %125, %122
  %140 = load i32, i32* %16, align 4
  %141 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %142 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %147

143:                                              ; preds = %116
  %144 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %145 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147, %115
  %149 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %11, align 8
  %150 = icmp ne void (i8*, i8*, i64)* %149, null
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %11, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %155 = load i32, i32* @caddr_t, align 4
  %156 = call i32 @MTOD(%struct.mbuf* %154, i32 %155)
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  %159 = load i32, i32* %16, align 4
  %160 = zext i32 %159 to i64
  call void %152(i8* %153, i8* %158, i64 %160)
  br label %168

161:                                              ; preds = %148
  %162 = load i8*, i8** %17, align 8
  %163 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %164 = load i32, i32* @caddr_t, align 4
  %165 = call i32 @MTOD(%struct.mbuf* %163, i32 %164)
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @bcopy(i8* %162, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %161, %151
  %169 = load i32, i32* %16, align 4
  %170 = load i8*, i8** %17, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8* %172, i8** %17, align 8
  %173 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %174 = load %struct.mbuf**, %struct.mbuf*** %14, align 8
  store %struct.mbuf* %173, %struct.mbuf** %174, align 8
  %175 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %176 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %175, i32 0, i32 3
  store %struct.mbuf** %176, %struct.mbuf*** %14, align 8
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %8, align 4
  %179 = sub nsw i32 %178, %177
  store i32 %179, i32* %8, align 4
  %180 = load i8*, i8** %17, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = icmp eq i8* %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %168
  %184 = load i8*, i8** %7, align 8
  store i8* %184, i8** %17, align 8
  br label %185

185:                                              ; preds = %183, %168
  br label %57

186:                                              ; preds = %57
  %187 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %187, %struct.mbuf** %6, align 8
  br label %188

188:                                              ; preds = %186, %112, %70, %44
  %189 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  ret %struct.mbuf* %189
}

declare dso_local i32 @_MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @_MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_maxsize(i32) #1

declare dso_local i32 @MTOD(%struct.mbuf*, i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
