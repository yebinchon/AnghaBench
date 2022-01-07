; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_normalize_tcpopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_normalize_tcpopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { i64, i32 }
%struct.pfi_kif = type { i32 }
%struct.pf_pdesc = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.tcphdr = type { i32, i32 }

@MAX_TCPOPTLEN = common dso_local global i32 0, align 4
@PF_DROP = common dso_local global i32 0, align 4
@TCPOPT_EOL = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@PFRES_MEMORY = common dso_local global i32 0, align 4
@h = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_rule*, i32, %struct.pfi_kif*, %struct.pf_pdesc*, %struct.TYPE_7__*, %struct.tcphdr*, i32, i32*)* @pf_normalize_tcpopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_normalize_tcpopt(%struct.pf_rule* %0, i32 %1, %struct.pfi_kif* %2, %struct.pf_pdesc* %3, %struct.TYPE_7__* %4, %struct.tcphdr* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_rule*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfi_kif*, align 8
  %13 = alloca %struct.pf_pdesc*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.pf_rule* %0, %struct.pf_rule** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %12, align 8
  store %struct.pf_pdesc* %3, %struct.pf_pdesc** %13, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %14, align 8
  store %struct.tcphdr* %5, %struct.tcphdr** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %30 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %31 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %33 = load i32, i32* @MAX_TCPOPTLEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %25, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %26, align 8
  store i32* %36, i32** %27, align 8
  %37 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 2
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %22, align 4
  %45 = load i32, i32* %22, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @pf_pull_hdr(%struct.TYPE_7__* %48, i32 %52, i32* %36, i32 %53, i32* null, i32* null, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @PF_DROP, align 4
  store i32 %58, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %208

59:                                               ; preds = %47, %8
  br label %60

60:                                               ; preds = %141, %59
  %61 = load i32, i32* %22, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %149

63:                                               ; preds = %60
  %64 = load i32*, i32** %27, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* @TCPOPT_EOL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %149

71:                                               ; preds = %63
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* @TCPOPT_NOP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %23, align 4
  br label %92

76:                                               ; preds = %71
  %77 = load i32, i32* %22, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %149

80:                                               ; preds = %76
  %81 = load i32*, i32** %27, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %23, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %22, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %80
  br label %149

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %75
  %93 = load i32, i32* %21, align 4
  switch i32 %93, label %139 [
    i32 128, label %94
  ]

94:                                               ; preds = %92
  %95 = load i32*, i32** %27, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = bitcast i32* %96 to i8*
  %98 = bitcast i8* %97 to i32*
  store i32* %98, i32** %19, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ntohs(i32 %100)
  %102 = load %struct.pf_rule*, %struct.pf_rule** %10, align 8
  %103 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %101, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %94
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CSUM_TCP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %111, %106
  %120 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %121 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %19, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pf_rule*, %struct.pf_rule** %10, align 8
  %126 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @htons(i32 %127)
  %129 = call i32 @pf_cksum_fixup(i32 %122, i32 %124, i32 %128, i32 0)
  %130 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %131 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %119, %111
  %133 = load %struct.pf_rule*, %struct.pf_rule** %10, align 8
  %134 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @htons(i32 %135)
  %137 = load i32*, i32** %19, align 8
  store i32 %136, i32* %137, align 4
  store i32 1, i32* %24, align 4
  br label %138

138:                                              ; preds = %132, %94
  br label %140

139:                                              ; preds = %92
  br label %140

140:                                              ; preds = %139, %138
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %22, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %22, align 4
  %145 = load i32, i32* %23, align 4
  %146 = load i32*, i32** %27, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %27, align 8
  br label %60

149:                                              ; preds = %90, %79, %70, %60
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %206

152:                                              ; preds = %149
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %154 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %155 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = icmp eq %struct.TYPE_7__* %153, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @VERIFY(i32 %158)
  %160 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %161 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %162 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = add i64 %165, 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %166, %168
  %170 = trunc i64 %169 to i32
  %171 = call i32* @pf_lazy_makewritable(%struct.pf_pdesc* %160, %struct.TYPE_7__* %163, i32 %170)
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %192

173:                                              ; preds = %152
  %174 = load i32, i32* @PFRES_MEMORY, align 4
  %175 = call i32 @REASON_SET(i32* %29, i32 %174)
  %176 = load %struct.pf_rule*, %struct.pf_rule** %10, align 8
  %177 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load %struct.pfi_kif*, %struct.pfi_kif** %12, align 8
  %182 = load i32, i32* @h, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %184 = load i32, i32* @AF_INET, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %29, align 4
  %187 = load %struct.pf_rule*, %struct.pf_rule** %10, align 8
  %188 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %189 = call i32 @PFLOG_PACKET(%struct.pfi_kif* %181, i32 %182, %struct.TYPE_7__* %183, i32 %184, i32 %185, i32 %186, %struct.pf_rule* %187, i32 0, i32 0, %struct.pf_pdesc* %188)
  br label %190

190:                                              ; preds = %180, %173
  %191 = load i32, i32* @PF_DROP, align 4
  store i32 %191, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %208

192:                                              ; preds = %152
  %193 = load i32*, i32** %17, align 8
  store i32 1, i32* %193, align 4
  %194 = load %struct.pf_pdesc*, %struct.pf_pdesc** %13, align 8
  %195 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %194, i32 0, i32 0
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = add i64 %198, 8
  %200 = trunc i64 %199 to i32
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = sub i64 %202, 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @pbuf_copy_back(%struct.TYPE_7__* %196, i32 %200, i32 %204, i32* %36)
  br label %206

206:                                              ; preds = %192, %149
  %207 = load i32, i32* @PF_PASS, align 4
  store i32 %207, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %208

208:                                              ; preds = %206, %190, %57
  %209 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %209)
  %210 = load i32, i32* %9, align 4
  ret i32 %210
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pf_pull_hdr(%struct.TYPE_7__*, i32, i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @pf_cksum_fixup(i32, i32, i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32* @pf_lazy_makewritable(%struct.pf_pdesc*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @REASON_SET(i32*, i32) #2

declare dso_local i32 @PFLOG_PACKET(%struct.pfi_kif*, i32, %struct.TYPE_7__*, i32, i32, i32, %struct.pf_rule*, i32, i32, %struct.pf_pdesc*) #2

declare dso_local i32 @pbuf_copy_back(%struct.TYPE_7__*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
