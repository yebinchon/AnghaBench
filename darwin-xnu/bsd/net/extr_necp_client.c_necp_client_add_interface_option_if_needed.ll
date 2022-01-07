; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_add_interface_option_if_needed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_add_interface_option_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i64, %struct.necp_client_interface_option*, %struct.necp_client_interface_option*, i32 }
%struct.necp_client_interface_option = type { i64, i32, i64 }

@IFSCOPE_NONE = common dso_local global i64 0, align 8
@NECP_CLIENT_MAX_INTERFACE_OPTIONS = common dso_local global i64 0, align 8
@NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT = common dso_local global i64 0, align 8
@NECP_CLIENT_INTERFACE_OPTION_EXTRA_COUNT = common dso_local global i32 0, align 4
@M_NECP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.necp_client*, i64, i64, i32*)* @necp_client_add_interface_option_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_client_add_interface_option_if_needed(%struct.necp_client* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.necp_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.necp_client_interface_option*, align 8
  %11 = alloca %struct.necp_client_interface_option*, align 8
  %12 = alloca %struct.necp_client_interface_option*, align 8
  %13 = alloca %struct.necp_client_interface_option*, align 8
  store %struct.necp_client* %0, %struct.necp_client** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @IFSCOPE_NONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %19 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %24 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %4
  br label %217

28:                                               ; preds = %22, %17
  %29 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %30 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NECP_CLIENT_MAX_INTERFACE_OPTIONS, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %217

35:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %127, %35
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %39 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %130

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %42
  %47 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %48 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %47, i32 0, i32 2
  %49 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %49, i64 %50
  store %struct.necp_client_interface_option* %51, %struct.necp_client_interface_option** %10, align 8
  %52 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %10, align 8
  %53 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %46
  %58 = load i32*, i32** %8, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %217

61:                                               ; preds = %57
  %62 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %10, align 8
  %63 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @uuid_compare(i32 %64, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %217

70:                                               ; preds = %61
  %71 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %10, align 8
  %72 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @uuid_is_null(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %10, align 8
  %78 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @uuid_copy(i32 %79, i32 %81)
  br label %217

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %46
  br label %126

85:                                               ; preds = %42
  %86 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %87 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %86, i32 0, i32 1
  %88 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT, align 8
  %91 = sub i64 %89, %90
  %92 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %88, i64 %91
  store %struct.necp_client_interface_option* %92, %struct.necp_client_interface_option** %11, align 8
  %93 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %11, align 8
  %94 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %125

98:                                               ; preds = %85
  %99 = load i32*, i32** %8, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %217

102:                                              ; preds = %98
  %103 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %11, align 8
  %104 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @uuid_compare(i32 %105, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %217

111:                                              ; preds = %102
  %112 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %11, align 8
  %113 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @uuid_is_null(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %11, align 8
  %119 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @uuid_copy(i32 %120, i32 %122)
  br label %217

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %85
  br label %126

126:                                              ; preds = %125, %84
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %9, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %9, align 8
  br label %36

130:                                              ; preds = %36
  %131 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %132 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %130
  %137 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %138 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %137, i32 0, i32 2
  %139 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %138, align 8
  %140 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %141 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %139, i64 %142
  store %struct.necp_client_interface_option* %143, %struct.necp_client_interface_option** %12, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %12, align 8
  %146 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %12, align 8
  %149 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %136
  %153 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %12, align 8
  %154 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @uuid_copy(i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %152, %136
  %160 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %161 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %161, align 8
  br label %217

164:                                              ; preds = %130
  %165 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %166 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %165, i32 0, i32 1
  %167 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %166, align 8
  %168 = icmp eq %struct.necp_client_interface_option* %167, null
  br i1 %168, label %169, label %181

169:                                              ; preds = %164
  %170 = load i32, i32* @NECP_CLIENT_INTERFACE_OPTION_EXTRA_COUNT, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 24, %171
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @M_NECP, align 4
  %175 = load i32, i32* @M_WAITOK, align 4
  %176 = load i32, i32* @M_ZERO, align 4
  %177 = or i32 %175, %176
  %178 = call %struct.necp_client_interface_option* @_MALLOC(i32 %173, i32 %174, i32 %177)
  %179 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %180 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %179, i32 0, i32 1
  store %struct.necp_client_interface_option* %178, %struct.necp_client_interface_option** %180, align 8
  br label %181

181:                                              ; preds = %169, %164
  %182 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %183 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %182, i32 0, i32 1
  %184 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %183, align 8
  %185 = icmp ne %struct.necp_client_interface_option* %184, null
  br i1 %185, label %186, label %216

186:                                              ; preds = %181
  %187 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %188 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %187, i32 0, i32 1
  %189 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %188, align 8
  %190 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %191 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT, align 8
  %194 = sub i64 %192, %193
  %195 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %189, i64 %194
  store %struct.necp_client_interface_option* %195, %struct.necp_client_interface_option** %13, align 8
  %196 = load i64, i64* %6, align 8
  %197 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %13, align 8
  %198 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  %199 = load i64, i64* %7, align 8
  %200 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %13, align 8
  %201 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %200, i32 0, i32 2
  store i64 %199, i64* %201, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %186
  %205 = load %struct.necp_client_interface_option*, %struct.necp_client_interface_option** %13, align 8
  %206 = getelementptr inbounds %struct.necp_client_interface_option, %struct.necp_client_interface_option* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @uuid_copy(i32 %207, i32 %209)
  br label %211

211:                                              ; preds = %204, %186
  %212 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %213 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %213, align 8
  br label %216

216:                                              ; preds = %211, %181
  br label %217

217:                                              ; preds = %27, %34, %60, %69, %76, %101, %110, %117, %216, %159
  ret void
}

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local i64 @uuid_is_null(i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local %struct.necp_client_interface_option* @_MALLOC(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
