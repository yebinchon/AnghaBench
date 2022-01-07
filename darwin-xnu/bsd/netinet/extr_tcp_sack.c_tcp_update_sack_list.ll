; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_update_sack_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_update_sack_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i8*, i32, i64, %struct.sackblk* }
%struct.sackblk = type { i8*, i8* }

@MAX_SACK_BLKS = common dso_local global i32 0, align 4
@TF_STRETCHACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_update_sack_list(%struct.tcpcb* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sackblk, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i32, i32* @MAX_SACK_BLKS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.sackblk, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %104, %3
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %107

29:                                               ; preds = %23
  %30 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %31 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %30, i32 0, i32 4
  %32 = load %struct.sackblk*, %struct.sackblk** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %32, i64 %34
  %36 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %13, align 8
  %38 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 4
  %40 = load %struct.sackblk*, %struct.sackblk** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %40, i64 %42
  %44 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = call i64 @SEQ_GEQ(i8* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %29
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @SEQ_LEQ(i8* %51, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %29
  br label %103

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i64 @SEQ_LEQ(i8* %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = call i64 @SEQ_GEQ(i8* %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i64 @SEQ_GT(i8* %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  store i8* %77, i8** %78, align 8
  br label %79

79:                                               ; preds = %76, %70
  %80 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i64 @SEQ_LT(i8* %81, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  store i8* %86, i8** %87, align 8
  br label %88

88:                                               ; preds = %85, %79
  br label %102

89:                                               ; preds = %64, %58
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %18, i64 %92
  %94 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %93, i32 0, i32 0
  store i8* %90, i8** %94, align 16
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %18, i64 %97
  %99 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %98, i32 0, i32 1
  store i8* %95, i8** %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %89, %88
  br label %103

103:                                              ; preds = %102, %57
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %23

107:                                              ; preds = %23
  store i32 0, i32* %10, align 4
  %108 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @SEQ_GT(i8* %109, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %107
  %116 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %117 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %116, i32 0, i32 4
  %118 = load %struct.sackblk*, %struct.sackblk** %117, align 8
  %119 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %118, i64 0
  %120 = bitcast %struct.sackblk* %119 to i8*
  %121 = bitcast %struct.sackblk* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  store i32 1, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @MAX_SACK_BLKS, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %125, %115
  br label %129

129:                                              ; preds = %128, %107
  %130 = load i32, i32* %11, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %134 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %133, i32 0, i32 4
  %135 = load %struct.sackblk*, %struct.sackblk** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %135, i64 %137
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 16, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32 @bcopy(%struct.sackblk* %18, %struct.sackblk* %138, i32 %142)
  br label %144

144:                                              ; preds = %132, %129
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %145, %146
  %148 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %149 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %151 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @TF_STRETCHACK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %144
  %157 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %158 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %163 = call i32 @tcp_reset_stretch_ack(%struct.tcpcb* %162)
  br label %164

164:                                              ; preds = %161, %156, %144
  %165 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %165)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SEQ_GEQ(i8*, i8*) #2

declare dso_local i64 @SEQ_LEQ(i8*, i8*) #2

declare dso_local i64 @SEQ_GT(i8*, i8*) #2

declare dso_local i64 @SEQ_LT(i8*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @bcopy(%struct.sackblk*, %struct.sackblk*, i32) #2

declare dso_local i32 @tcp_reset_stretch_ack(%struct.tcpcb*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
